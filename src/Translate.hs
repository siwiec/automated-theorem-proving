{-|
Module      : Translate
Description : Core module for translating queries into the TPTP syntax
Copyright   : n/a
License     : MIT
Maintainer  : mat.siwiec@gmail.com
Stability   : experimental
Portability : POSIX

Module exports function translateStatements, which creates a query description in the TPTP syntax.

Currently only first-order logic statements are supported and only a small subset of SQL queries.

@
BNF of the accepted SQL queries
@

-}

module Translate
    (
    -- * Functions
    -- ** translateStatements
    translateStatements
    ) where

import Axiom
import Language.SQL.SimpleSQL.Syntax
import TptpSyntax
import FofFormula
import DatabaseScheme


import Control.Monad.Error
import Control.Monad.State
import Data.Char
import Data.Either
import Data.Foldable
import Data.List.Index
import Data.List ( length, intercalate )
import Data.Map
import Data.Maybe
import Prelude
import System.Environment ( getArgs )
import System.Exit
import System.FilePath.Posix
import System.IO ( stdin, hGetContents, hPutStrLn, stderr )
import Text.Show.Pretty ( ppShow )

--| Translator state
data Store = Store { databaseScheme :: DatabaseScheme
                   , translation :: [TptpFormula]
                   , prefix :: String
                   , queryNumber :: Integer
                   }


type Eval a = ErrorT String (StateT Store IO) a

{-|
    runTranslate starts a single translation (translation of a single query)
-}
runTranslate initStore error = runStateT (runErrorT error) initStore

--| The function adds a new first-order logic formula entry to the translator's state
fofEmit :: String       -- ^ Formula name
        -> Role         -- ^ Formula role
        -> FofFormula   -- ^ first-order logic formula
        -> Maybe String -- ^ Optional annotations
        -> Eval ()      -- ^ Translator state
--fofEmit n r f a = modify $ \(databaseScheme, store, currentPrefix, counter) -> (databaseScheme, store ++ [TptpFofFormula (n ++ "_" ++ ( show (length store))) r f a], currentPrefix, counter)
fofEmit name role formula annotations = do
    store@(Store {translation = t}) <- get
    let newName = name ++ "_" ++ (show (length $ translation store))
    put store {translation = t ++ [TptpFofFormula newName role formula annotations]}
    where

{-|
    The translateStatements function takes two lists of statements (the abstract syntax tree of a DDL and a query)
    and returns either an error message, when an eror occured during the translation of the query or two strings
    one of which contains the description of the database scheme, and the other contains the query translated to the TPTP syntax

    Statement structure described here: https://github.com/JakeWheat/simple-sql-parser/blob/master/Language/SQL/SimpleSQL/Syntax.lhs
-}
translateStatements :: [Statement] -- ^ List of SQL statements -- either queries or database schema description
                    -> IO () -- ^ Either error or database scheme description and translated query
translateStatements inputAst = do
    let databaseSchemeAst = [(CreateTable names tableElements)| (CreateTable names tableElements) <- inputAst]
    let queriesAst = [(SelectStatement queryExpr)| (SelectStatement queryExpr) <- inputAst]
    let databaseScheme = databaseSchemeFromAst databaseSchemeAst
    putStrLn "% Database scheme:"
    putStrLn $ show databaseScheme
    imapM_ (translateSingleQuery (Store databaseScheme [] "" 0)) queriesAst
    mapM_ putStrLn (Prelude.map show (buildAxioms $ (getTablesWithArity databaseScheme) ++ [ ("lessThanOrEqual", 2) ]))

{-|
    translateSingleQuery
-}
translateSingleQuery :: Store     -- ^ Initial store
                     -> Int       -- ^ Query number
                     -> Statement -- ^ Pair (query number, query AST)
                     -> IO ()     -- ^ Error message or the TPTP translation of the query
translateSingleQuery initialState queryNumber queryAst = do
    putStrLn $ "% Translating query " ++ show queryNumber ++ "..."
    putStrLn . unlines $ Prelude.map ((++) "% ") $ lines $ ppShow queryAst
    result <- runTranslate initialState (translateStatement ("main_query_" ++ show queryNumber) queryAst)
    case result of
        (Left errorMsg, _) -> do
            fail $ "Translation error: " ++ errorMsg
        (Right _, (Store _ queryTptp _ _)) -> mapM_ (putStrLn . show) queryTptp


{-|
    translateStatement
-}
translateStatement :: String    -- ^ Query name
                   -> Statement -- ^ Query AST
                   -> Eval ()
translateStatement queryName x = case x of
    (SelectStatement queryExpr) -> do
        fofFormula <- translateQueryExpr queryExpr
        let idents = getFreeVariables fofFormula
        fofEmit (queryName ++ "_definition") Definition (ForAll idents (Equiv (Predicate queryName idents) fofFormula)) Nothing
        if queryName == "main_query_1" then do
            fofEmit "equivalence_check" Conjecture (ForAll idents (Equiv (Predicate "main_query_0" idents) (Predicate "main_query_1" idents))) Nothing
            return ()
        else return ()
    _ -> throwError "Unknown Statement"

{-|
    translateQueryExpr
-}
translateQueryExpr :: QueryExpr
                   -> Eval FofFormula
translateQueryExpr x = case x of
    (Select _ qeSelectList qeFrom qeWhere qeGroupBy qeHaving _ _ _) -> translateSelect qeSelectList qeFrom qeWhere qeGroupBy qeHaving
    (QueryExprSetOp qe0 qeCombOp _ _ qe1) -> do
        translateQueryExpr qe0
        translateQeCombOp qeCombOp
        translateQueryExpr qe1
    (Table names) -> translateTable names
    _ -> throwError "Unknown QueryExpr"

{-|
    translateSelect translates an AST of an expression of form
    ```
    SELECT ...
    FROM ...
    WHERE ..
    GROUP BY ...
    HAVING ...
    ```
    to an FOF formula
-}
translateSelect :: [(ScalarExpr, Maybe Name)]
                -> [TableRef]
                -> Maybe ScalarExpr
                -> [GroupingExpr]
                -> Maybe ScalarExpr
                -> Eval FofFormula
translateSelect [] _ _ _ _ = return EmptyFormula
translateSelect qeSelectList qeFrom qeWhere qeGroupBy qeHaving = do
    fromFofFormulas <- translateQeFrom qeFrom
    Store databaseScheme tptpFormulas currentPrefix counter <- get
    selectList <- translateQeSelectList qeSelectList
    let forAllIdents = toVariables $ Prelude.map ((++) currentPrefix) selectList
    let fromFormula  = Data.Foldable.foldr (\x y -> And x y) EmptyFormula fromFofFormulas
    let idents = toVariables $ getFreeVariables fromFormula
    whereFormula <- translateQeWhere qeWhere
    -- translateQeGroupBy qeGroupBy
    -- translateQeHaving qeHaving
    let existsIdents = [ x| x <- idents, x `notElem` forAllIdents ]
    return (Exists existsIdents (And fromFormula whereFormula))

{-|
    translateQeCombOp
-}
translateQeCombOp :: SetOperatorName
                  -> Eval FofFormula
translateQeCombOp qeCombOp = throwError "Function translateQeCombOp not yet implemented"

{-|
    translateQeSelectList
-}
translateQeSelectList :: [(ScalarExpr,Maybe Name)]
                      -> Eval [String]
translateQeSelectList qeSelectList = do
    return $ toVariables $ Prelude.map  (intercalate "_") $
        Prelude.map (\(Iden ns, _) ->
            Prelude.map (\(Name _ n) -> n) ns
        ) qeSelectList

{-|
    translateQeFrom translates the entire FROM clause to an FOF formula
-}
translateQeFrom :: [TableRef]
                -> Eval [FofFormula]
translateQeFrom qeFrom = mapM translateTableRef qeFrom


{-|
    translateTableRef translates every entry in the FROM clause (table reference) to an FOF formula
-}
translateTableRef :: TableRef
                  -> Eval FofFormula
translateTableRef tableRef = case tableRef of
    (TRSimple names) -> translateTRSimple names
    (TRJoin tableRef1 nautral joinType tableRef2 joinCondition) -> throwError "Function translateTRJoin not yet implemented"
    (TRParens tableRef) -> throwError "Function translateTRParens not yet implemented"
    (TRAlias tableRef (Alias (Name _ name) _)) -> do
        Store databaseScheme tptpFormulas currentPrefix counter <- get
        put $ Store databaseScheme tptpFormulas (currentPrefix ++ name ++ "_") counter
        ret <- translateTableRef tableRef
        put $ Store databaseScheme tptpFormulas currentPrefix counter
        return ret
    (TRQueryExpr queryExpr) -> translateTRQueryExpr queryExpr
    (TRFunction names scalarExprs) -> throwError "Function translateTRFunction not yet implemented"
    (TRLateral tableRef) -> throwError "Function translateTRLateral not yet implemented"
    (TROdbc tableRef) -> throwError "Function translateTROdbc not yet implemented"


{-|
    translateTRQueryExpr
-}
translateTRQueryExpr :: QueryExpr
                     -> Eval FofFormula
translateTRQueryExpr = translateQueryExpr

{-|
    translateQeWhere
-}
translateQeWhere :: Maybe ScalarExpr
                 -> Eval FofFormula
translateQeWhere qeWhere = case qeWhere of
    Nothing -> return EmptyFormula
    (Just scalarExpr) -> translateScalarExpr scalarExpr

{-|
    translateScalarExpr
-}
translateScalarExpr :: ScalarExpr
                    -> Eval FofFormula
translateScalarExpr scalarExpr = do
    case scalarExpr of
        (NumLit _) -> throwError "Function translateScalarExpr not yet implemented for (NumLit _)"
        (StringLit _ _ _) -> throwError "Function translateScalarExpr not yet implemented for (StringLit _ _ _)"
        (IntervalLit _ _ _ _) -> throwError "Function translateScalarExpr not yet implemented for (IntervalLit _)"
        (TypedLit _ _) -> throwError "Function translateScalarExpr not yet implemented for (TypedLit _ _)"
        (Iden names) -> throwError $ "Iden names (" ++ show (Iden names) ++ ") cannot be represented as an FOF formula!"
        Star -> throwError "Function translateScalarExpr not yet implemented for Star"
        Parameter -> throwError "Function translateScalarExpr not yet implemented for Parameter"
        (PositionalArg _) -> throwError "Function translateScalarExpr not yet implemented for (PositionalArg _)"
        (HostParameter _ _) -> throwError "Function translateScalarExpr not yet implemented for (HostParameter _ _)"
        (BinOp (Iden names) binOpNames (Iden names2)) -> do
            Store databaseScheme tptpFormulas currentPrefix counter <- get
            let scalarExprFofFormula = toVariable $ currentPrefix ++ (namesToString names)
            let scalarExprFofFormula2 = toVariable $ currentPrefix ++ (namesToString names2)
            case binOpNames of
                [Name _ "="]  -> return (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2])
                [Name _ "<="]  -> return (Predicate "lessThanOrEqual" [scalarExprFofFormula, scalarExprFofFormula2])
                [Name _ ">="]  -> return (Predicate "lessThanOrEqual" [scalarExprFofFormula2, scalarExprFofFormula])
                [Name _ "<"] -> return (And (Predicate "lessThanOrEqual" [scalarExprFofFormula, scalarExprFofFormula2]) (Not (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2])))
                [Name _ ">"] -> return (And (Predicate "lessThanOrEqual" [scalarExprFofFormula2, scalarExprFofFormula]) (Not (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2])))
                [Name _ "!="] -> return (Not (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2]))
                _ -> throwError $ "Unknown BinOp expression: " ++ show (BinOp scalarExpr names scalarExpr)
        (BinOp scalarExpr binOpNames scalarExpr2) -> do
            scalarExprFofFormula <- translateScalarExpr scalarExpr
            scalarExprFofFormula2 <- translateScalarExpr scalarExpr2
            case binOpNames of
                [Name _ "&"] -> return (And scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "and"] -> return (And scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "|"] -> return (Or scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "or"] -> return (Or scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "=>"] -> return (Implies scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "<=>"] -> return (Equiv scalarExprFofFormula scalarExprFofFormula2)
                _ -> throwError $ "Unknown BinOp expression: " ++ show (BinOp scalarExpr binOpNames scalarExpr)

        (PrefixOp names _) -> throwError "Function translateScalarExpr not yet implemented for (PrefixOp names _)"
        (PostfixOp names _) -> throwError "Function translateScalarExpr not yet implemented for (PostfixOp names _)"
        (SpecialOp names _) -> throwError "Function translateScalarExpr not yet implemented for (SpecialOp names _)"
        (App names _) -> throwError "Function translateScalarExpr not yet implemented for (App names _)"
        (AggregateApp _ _ _ _ _) -> throwError "Function translateScalarExpr not yet implemented for (AggregateApp _)"
        (AggregateAppGroup _ _ _) -> throwError "Function translateScalarExpr not yet implemented for (AggregateAppGroup _)"
        (WindowApp _ _ _ _ _) -> throwError "Function translateScalarExpr not yet implemented for (WindowApp _)"
        (SpecialOpK names _ _) -> throwError "Function translateScalarExpr not yet implemented for (SpecialOpK names _ _)"
        (Cast _ _) -> throwError "Function translateScalarExpr not yet implemented for (Cast _ _)"
        (Case _ _ _) -> throwError "Function translateScalarExpr not yet implemented for (Case _ _)"
        (Parens scalarExpr) -> translateScalarExpr scalarExpr
        (In bool scalarExpr inPredValue) -> throwError "Function translateScalarExpr not yet implemented for (In bool scalarExpr inPredValue)"
        (SubQueryExpr _ _) -> throwError "Function translateScalarExpr not yet implemented for (SubQueryExpr _ _)"
        (QuantifiedComparison _ _ _ _) -> throwError "Function translateScalarExpr not yet implemented for (QuantifiedComparison _ _ _ _)"
        (Match _ _ _) -> throwError "Function translateScalarExpr not yet implemented for (Match _ _ _)"
        (Array scalarExpr scalarExprs) -> throwError "Function translateScalarExpr not yet implemented for (Array scalarExpr scalarExprs)"
        (ArrayCtor queryExpr) -> throwError "Function translateScalarExpr not yet implemented for (ArrayCtor queryExpr)"
        (Collate scalarExpr names) -> throwError "Function translateScalarExpr not yet implemented for (Collate scalarExpr names)"
        (MultisetBinOp scalarExpr setOperatorName setQuantifier scalarExpr2) -> throwError "Function translateScalarExpr not yet implemented for (MultisetBinOp scalarExpr setOperatorName setQuantifier scalarExpr2)"
        (MultisetCtor scalarExprs) -> throwError "Function translateScalarExpr not yet implemented for (MultisetCtor scalarExprs)"
        (MultisetQueryCtor queryExpr) -> throwError "Function translateScalarExpr not yet implemented for (MultisetQueryCtor queryExpr)"
        (NextValueFor names) -> throwError "Function translateScalarExpr not yet implemented for (NextValueFor names)"
        (VEComment comments scalarExpr) -> throwError "Function translateScalarExpr not yet implemented for (VEComment comments scalarExpr)"
        (OdbcLiteral odbcLiteralType str) -> throwError "Function translateScalarExpr not yet implemented for (OdbcLiteral odbcLiteralType str)"
        (OdbcFunc scalarExpr) -> throwError "Function translateScalarExpr not yet implemented for (OdbcFunc scalarExpr)"

{-|
    translateQeGroupBy
-}
translateQeGroupBy :: [GroupingExpr]
                   -> Eval ()
translateQeGroupBy qeGroupBy = throwError "Function translateQeGroupBy not yet implemented"

{-|
    translateQeHaving
-}
translateQeHaving :: Maybe ScalarExpr
                  -> Eval ()
translateQeHaving qeHaving = throwError "Function translateQeHaving not yet implemented"

{-|
    translateTRSimple translates a simple table reference (table name)
-}
translateTRSimple :: [Name]
                  -> Eval FofFormula
translateTRSimple names = do
    Store databaseScheme tptpFormulas currentPrefix counter <- get
    let tableName = namesToString names
    let columnNames = getColumnNames tableName databaseScheme
    let aliasedColumnNames = Prelude.map ((++) currentPrefix) columnNames
    return $ Predicate tableName aliasedColumnNames

{-|
    namesToString
-}
namesToString :: [Name] -> String
namesToString names = intercalate "_" (Prelude.map (\(Name _ name) -> name) names)

{-|
    translateJoinCondition
-}
translateJoinCondition :: Maybe JoinCondition
                       -> Eval FofFormula
translateJoinCondition _ = throwError "Function translateJoinCondition not yet implemented"

{-|
    translateTable
-}
translateTable :: [Name] -> Eval FofFormula
translateTable names = throwError "Function translateTable not yet implemented"
