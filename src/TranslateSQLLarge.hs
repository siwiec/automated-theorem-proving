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
type Store = (DatabaseScheme -- ^ set only at the beginning of the translation process
             ,[TptpFormula] -- ^ at the end of the translation process this value stores the query in the TPTP syntax
             ,Data.Map.Map String FofFormula -- ^ map from query names to their first order representation
             )


type Eval a = ErrorT String (StateT Store IO) a

runTranslate initStore error = runStateT (runErrorT error) initStore

-- | The function adds a new first-order logic formula entry to the translator's state
fofEmit :: String       -- ^ Formula name
        -> Role         -- ^ Formula role
        -> FofFormula   -- ^ first-order logic formula
        -> Maybe String -- ^ Optional annotations
        -> Eval ()      -- ^ Translator state
fofEmit n r f a = modify $ \(databaseScheme, store, queriesMap) -> (databaseScheme, store ++ [TptpFofFormula (n ++ "_" ++ ( show (length store))) r f a], queriesMap)

{- |
    The translateStatements function takes two lists of statements (the abstract syntax tree of a DDL and a query)
    and returns either an error message, when an eror occured during the translation of the query or two strings
    one of which contains the description of the database scheme, and the other contains the query translated to the TPTP syntax

    Statement structure described here: https://github.com/JakeWheat/simple-sql-parser/blob/master/Language/SQL/SimpleSQL/Syntax.lhs
-}
translateStatements :: [Statement]
                    -> IO (Either String (String, String)) -- ^ Either error or database scheme description and translated query
translateStatements (parsedQuery1:parsedQuery2:parsedDatabaseScheme) = do
    let databaseScheme = databaseSchemeFromAst parsedDatabaseScheme
    result <- runTranslate (databaseScheme, [], Data.Map.empty) (mapM_ translateStatement [parsedQuery1, parsedQuery2])
    case result of
        (Left errorMsg, _) -> do
            fail $ "Translation error: " ++ errorMsg
        (Right _, (databaseScheme, output, _)) -> return $ Right ((show databaseScheme), (concat(Prelude.map show output)))
translateStatements _ = fail "Unknown command; invalid number of queries"

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
    (idents, fromFormula) <- translateQeFrom qeFrom
    (forAllIdents, selectFormula) <- translateQeSelectList qeSelectList
    whereFormula <- translateQeWhere qeWhere
    -- translateQeGroupBy qeGroupBy
    -- translateQeHaving qeHaving
    let existsIdents = [ x | x <- idents, notElem x forAllIdents ]
    let formula = Equiv selectFormula (And (Exists existsIdents fromFormula) EmptyFormula)
    fofEmit "select" Definition formula Nothing

translateQeCombOp :: SetOperatorName
                  -> Eval ()
translateQeCombOp qeCombOp = throwError "Function not yet implemented"

translateQeSelectList :: [(ScalarExpr,Maybe Name)]
                      -> Eval ([String], FofFormula)
translateQeSelectList qeSelectList = do
    let idents = Prelude.map (intercalate "_") $
                    Prelude.map (\(Iden ns, _) ->
                        Prelude.map (\(Name _ n) -> n) ns
                        ) qeSelectList
    -- idents holds the names of columns
    -- queryName <- getNewQueryName
    return (idents, ForAll idents (Predicate "query1" idents))

translateQeFrom :: [TableRef]
                -> Eval ([String], FofFormula)
translateQeFrom qeFrom = do
    translatedTableRefs <- mapM translateTableRef qeFrom
    return $ Data.Foldable.foldr (\ (idents1, translatedTableRefs1) (idents2, translatedTableRefs2) -> (idents1 ++ idents2, And translatedTableRefs1 translatedTableRefs2)) ([], EmptyFormula) translatedTableRefs


translateTableRef :: TableRef
                  -> Eval ([String], FofFormula)
translateTableRef tableRef = case tableRef of
    (TRSimple names) -> do
        translatedTRSimple <- mapM translateTRSimple names
        return $ Data.Foldable.foldr (\ (idents1, translatedTRSimple1) (idents2, translatedTRSimple2) -> (idents1 ++ idents2, And translatedTRSimple1 translatedTRSimple2)) ([], EmptyFormula) translatedTRSimple
    (TRJoin tableRef1 nautral joinType tableRef2 joinCondition) ->  throwError "Function not yet implemented"
    (TRParens tableRef) -> throwError "Function not yet implemented"
    (TRAlias tableRef alias) -> throwError "Function not yet implemented"
    (TRQueryExpr queryExpr) -> throwError "Function not yet implemented"
    (TRFunction names scalarExprs) -> throwError "Function not yet implemented"
    (TRLateral tableRef) -> throwError "Function not yet implemented"
    (TROdbc tableRef) -> throwError "Function not yet implemented"

translateQeWhere :: Maybe ScalarExpr
                 -> Eval ()
translateQeWhere qeWhere = throwError "Function not yet implemented"

translateQeGroupBy :: [GroupingExpr]
                   -> Eval ()
translateQeGroupBy qeGroupBy = throwError "Function not yet implemented"

translateQeHaving :: Maybe ScalarExpr
                  -> Eval ()
translateQeHaving qeHaving = throwError "Function not yet implemented"

translateTRSimple :: Name
               -> Eval ([String], FofFormula)
translateTRSimple (Name _ name) = do
    (databaseScheme, _, _) <- get
    let columnNames = getColumnNames name databaseScheme
    -- getTableAlias
    let tableAlias = name
    let aliasedColumnNames = Prelude.map (\x -> name ++ "_" ++ x) columnNames
    return $ (aliasedColumnNames, Predicate tableAlias aliasedColumnNames)

translateJoinCondition :: Maybe JoinCondition
                       -> Eval FofFormula
translateJoinCondition _ = return EmptyFormula

translateTable :: Name -> Eval ()
translateTable name = throwError "Function not yet implemented"
