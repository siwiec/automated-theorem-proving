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

import Language.SQL.SimpleSQL.Syntax
import TptpSyntax
import FofFormula
import DatabaseScheme


import System.IO ( stdin, hGetContents, hPutStrLn, stderr )
import System.Exit
import Prelude
import Data.Map
import Data.Either
import Data.Maybe
import Data.List ( length, intercalate )
import System.Environment ( getArgs )
import Control.Monad.State
import System.FilePath.Posix
import Control.Monad.Error
import Data.Char
import Data.Foldable

-- | Translator state
type Store = (DatabaseScheme
             ,[TptpFormula]
             ,Data.Map.Map String ApplicableFofFormula
             ,Integer
             )


type Eval a = ErrorT String (StateT Store IO) a

runTranslate initStore error = runStateT (runErrorT error) initStore

-- | The function adds a new first-order logic formula entry to the translator's state
fofEmit :: String       -- ^ Formula name
        -> Role         -- ^ Formula role
        -> FofFormula   -- ^ first-order logic formula
        -> Maybe String -- ^ Optional annotations
        -> Eval ()      -- ^ Translator state
fofEmit n r f a = modify $ \(databaseScheme, store, queriesMap, counter) -> (databaseScheme, store ++ [TptpFofFormula (n ++ "_" ++ ( show (length store))) r f a], queriesMap, counter)


{- |
    The translateStatements function takes two lists of statements (the abstract syntax tree of a DDL and a query)
    and returns either an error message, when an eror occured during the translation of the query or two strings
    one of which contains the description of the database scheme, and the other contains the query translated to the TPTP syntax

    Statement structure described here: https://github.com/JakeWheat/simple-sql-parser/blob/master/Language/SQL/SimpleSQL/Syntax.lhs
-}
translateStatements :: [Statement]
                    -> IO () -- ^ Either error or database scheme description and translated query
translateStatements inputAst = do
    let databaseSchemeAst = [(CreateTable names tableElements) | (CreateTable names tableElements) <- inputAst]
    let queriesAst = [(SelectStatement queryExpr) | (SelectStatement queryExpr) <- inputAst]
    let databaseScheme = databaseSchemeFromAst databaseSchemeAst
    putStrLn "Database scheme:"
    putStrLn $ show databaseScheme
    -- translate all the queries
    mapM_ (translateSingleQuery (databaseScheme, [], Data.Map.empty, 0)) (zip [0..] queriesAst)




getName :: String
        -> Eval String
getName s = if s == "main_query" then throwError "Reserved name" else do
    (databaseScheme, tptpFormulas, formulasMap, counter) <- get
    put (databaseScheme, tptpFormulas, formulasMap, counter + 1)
    return $ s ++ "_" ++ show counter



translateSingleQuery :: Store                -- ^ Initial store
                     -> (Integer, Statement)  -- ^ Pair (query number, query AST)
                     -> IO () -- ^ Error message or the TPTP translation of the query
translateSingleQuery initialStore (queryNumber, queryAst) = do
    result <- runTranslate initialStore (translateStatement queryAst)
    case result of
        (Left errorMsg, _) -> do
            fail $ "Translation error: " ++ errorMsg
        (Right _, (_, queryTptp, _, _)) -> putStrLn $ show queryTptp


translateStatement :: Statement
                   -> Eval ()
translateStatement x = case x of
    (SelectStatement queryExpr) -> translateQueryExpr queryExpr
    _ -> throwError "Unknown Statement"

translateQueryExpr :: QueryExpr
                   -> Eval ()
translateQueryExpr x = case x of
    (Select _ qeSelectList qeFrom qeWhere qeGroupBy qeHaving _ _ _) -> translateSelect qeSelectList qeFrom qeWhere qeGroupBy qeHaving
    (QueryExprSetOp qe0 qeCombOp _ _ qe1) -> do
        translateQueryExpr qe0
        translateQeCombOp qeCombOp
        translateQueryExpr qe1
    (Table names) -> mapM_ translateTable names
    _ -> throwError "Unknown QueryExpr"

translateSelect :: [(ScalarExpr,Maybe Name)]
                -> [TableRef]
                -> Maybe ScalarExpr
                -> [GroupingExpr]
                -> Maybe ScalarExpr
                -> Eval ()
translateSelect [] _ _ _ _ = return ()
translateSelect qeSelectList qeFrom qeWhere qeGroupBy qeHaving = do
    fromApplicableFofFormulas <- translateQeFrom qeFrom
    let idents = concat $ Prelude.map (\(x, _) -> x) fromApplicableFofFormulas
    (forAllIdents, selectFormula) <- translateQeSelectList qeSelectList
    let fromFormula  = Data.Foldable.foldr (\x y -> And x y) EmptyFormula (Prelude.map (\(_, x) -> x) fromApplicableFofFormulas)
    whereFormula <- translateQeWhere qeWhere
    -- translateQeGroupBy qeGroupBy
    -- translateQeHaving qeHaving
    let existsIdents = [ x | x <- idents, notElem x forAllIdents ]
    let formula = ForAll idents (Equiv selectFormula (And (Exists existsIdents fromFormula) whereFormula))
    fofEmit "select" Definition formula Nothing

translateQeCombOp :: SetOperatorName
                  -> Eval ()
translateQeCombOp qeCombOp = throwError "Function translateQeCombOp not yet implemented"

translateQeSelectList :: [(ScalarExpr,Maybe Name)]
                      -> Eval ([String], FofFormula)
translateQeSelectList qeSelectList = do
    let idents = Prelude.map (intercalate "_") $
                    Prelude.map (\(Iden ns, _) ->
                        Prelude.map (\(Name _ n) -> n) ns
                        ) qeSelectList
    -- idents holds the names of columns
    -- queryName <- getNewQueryName
    return (idents, Predicate "query1" idents)

translateQeFrom :: [TableRef]
                -> Eval [ApplicableFofFormula]
translateQeFrom qeFrom = mapM (translateTableRef Nothing) qeFrom


translateTableRef :: Maybe String -- ^ Alias of the table
                  -> TableRef
                  -> Eval ApplicableFofFormula
translateTableRef alias tableRef = case tableRef of
    (TRSimple names) -> translateTRSimple alias names
    (TRJoin tableRef1 nautral joinType tableRef2 joinCondition) ->  throwError "Function translateTRJoin not yet implemented"
    (TRParens tableRef) -> throwError "Function translateTRParens not yet implemented"
    {-(TRAlias tableRef (Alias (Name _ name) _)) -> do
        tableRefApplicableFofFormula <- translateTableRef tableRef
        --(databaseScheme, store, queriesMap, counter) <- get
        --put (databaseScheme, store, (Data.Map.insert name tableRefApplicableFofFormula queriesMap), counter)
        let aliasedColumnNames = Prelude.map (\x -> name ++ "_" ++ x) columnNames
        case applyFofFormula aliasedColumnNames tableRefApplicableFofFormula of
            (Left errorMsg) -> throwError errorMsg
            (Right aliastedTableRefFofApplicableFormula) -> return (aliasedColumnNames, aliastedTableRefFofApplicableFormula) -}
    (TRAlias tableRef (Alias (Name _ name) _)) -> translateTableRef (Just name) tableRef
    (TRQueryExpr queryExpr) -> throwError "Function translateTRQueryExpr not yet implemented"
    (TRFunction names scalarExprs) -> throwError "Function translateTRFunction not yet implemented"
    (TRLateral tableRef) -> throwError "Function translateTRLateral not yet implemented"
    (TROdbc tableRef) -> throwError "Function translateTROdbc not yet implemented"

translateQeWhere :: Maybe ScalarExpr
                 -> Eval FofFormula
translateQeWhere qeWhere = case qeWhere of
    Nothing -> return EmptyFormula
    (Just scalarExpr) -> translateScalarExpr scalarExpr

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
            let scalarExprFofFormula = namesToString names
            let scalarExprFofFormula2 = namesToString names2
            case binOpNames of
                [Name _ "="]  -> return $ Predicate "Equal" [scalarExprFofFormula, scalarExprFofFormula2]
                [Name _ "<"]  -> return $ Predicate "LessThan" [scalarExprFofFormula, scalarExprFofFormula2]
                [Name _ ">"]  -> return $ Predicate "GreaterThan" [scalarExprFofFormula, scalarExprFofFormula2]
                [Name _ "<="] -> return $ Predicate "LessThanOrEqual" [scalarExprFofFormula, scalarExprFofFormula2]
                [Name _ ">="] -> return $ Predicate "GreaterThanOrEqual" [scalarExprFofFormula, scalarExprFofFormula2]
                [Name _ "!="] -> return $ Predicate "NotEqual" [scalarExprFofFormula, scalarExprFofFormula2]
                _ -> throwError $ "Unknown BinOp expression: " ++ show (BinOp scalarExpr names scalarExpr)
        (BinOp scalarExpr binOpNames scalarExpr2) -> do
            scalarExprFofFormula <- translateScalarExpr scalarExpr
            scalarExprFofFormula2 <- translateScalarExpr scalarExpr2
            case binOpNames of
                [Name _ "&"] -> return $ And scalarExprFofFormula scalarExprFofFormula2
                [Name _ "and"] -> return $ And scalarExprFofFormula scalarExprFofFormula2
                [Name _ "|"] -> return $ Or scalarExprFofFormula scalarExprFofFormula2
                [Name _ "or"] -> return $ Or scalarExprFofFormula scalarExprFofFormula2
                [Name _ "=>"] -> return $ Implies scalarExprFofFormula scalarExprFofFormula2
                [Name _ "<=>"] -> return $ Equiv scalarExprFofFormula scalarExprFofFormula2
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

translateQeGroupBy :: [GroupingExpr]
                   -> Eval ()
translateQeGroupBy qeGroupBy = throwError "Function translateQeGroupBy not yet implemented"

translateQeHaving :: Maybe ScalarExpr
                  -> Eval ()
translateQeHaving qeHaving = throwError "Function translateQeHaving not yet implemented"

translateTRSimple :: Maybe String -- ^ Optional alias
                  -> [Name]
                  -> Eval ApplicableFofFormula
translateTRSimple alias names = do
    (databaseScheme, _, _, _) <- get
    let tableName = namesToString names
    let columnNames = getColumnNames tableName databaseScheme
    aliasedColumnNames <- do
        return $ case alias of
            (Nothing) -> Prelude.map (\x -> tableName ++ "_" ++ x) columnNames
            (Just a) -> Prelude.map (\x -> a ++ "_" ++ x) columnNames
    return $ (aliasedColumnNames, Predicate tableName aliasedColumnNames)

namesToString :: [Name] -> String
namesToString names = intercalate "_" (Prelude.map (\(Name _ name) -> name) names)

translateJoinCondition :: Maybe JoinCondition
                       -> Eval FofFormula
translateJoinCondition _ = return EmptyFormula

translateTable :: Name -> Eval ()
translateTable name = throwError "Function translateTable not yet implemented"
