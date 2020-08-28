{- |
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
    ( translateStatements
    ) where

import Axiom
import DatabaseScheme
import FofFormula
import TptpSyntax

import Data.Char
import Data.Either
import Data.Foldable
import Data.List (intercalate, length)
import Data.List.Index
import Data.Map
import Language.SQL.SimpleSQL.Syntax
import Prelude
import System.IO (hGetContents, hPutStrLn, stderr, stdin)
import Text.Show.Pretty (ppShow)

-- | Translator state
data State =
    State
        { tableName         :: String
        , translation       :: FofFormula
        }

{- |
    Translation is a query expression represented as an FofFormula and is in the folloing format:
    (query_name, list of exposed columns, query_definition), where
    query_definition is in format (! [column_names] : query_name(column_names) <=> formula)
-}
type Translation
     = ( String     -- Global name of the predicate
       , [String]   -- List of exposed column names
       )

{- |
    The translateStatements function takes two lists of statements (the abstract syntax tree of a DDL and a query)
    and returns either an error message, when an eror occured during the translation of the query or a TPTP translation of the queries.

    Statement structure described here: https://github.com/JakeWheat/simple-sql-parser/blob/master/Language/SQL/SimpleSQL/Syntax.lhs
-}
translateStatements ::
       [Statement]          -- ^ List of SQL statements -- either queries or database schema description
    -> Either String String -- ^ Either error or database scheme description and translated query
translateStatements inputAst = do
    case [(SelectStatement queryExpr) | (SelectStatement queryExpr) <- inputAst] of
        [] -> -- no queries to translate
            return $
            "% Database scheme:\n" ++
            show (databaseScheme initialState) ++ "% NO QUERIES TO TRANSLATE"
        [queryAst] -> do -- one query to be translated
            output <- trandslateMainQuery initialState 0 queryAst -- TODO: output should be a list of queries + subqueries translated to fof
            return $
                "% Database scheme:\n" ++
                show (databaseScheme initialState) ++
                (unlines $ Prelude.map show $ output : (buildAxioms (databaseScheme initialState))) -- TODO: s/:/++/
        queriesAst -> do -- more than one query to be transalted
            queriesTptp <- imapM (trandslateMainQuery initialState) queriesAst
            let idents = (\(TptpFofFormula _ _ (ForAll x _) _) -> x) (head queriesTptp)
            let output =
                    (TptpFofFormula
                         "equivalence_check"
                         Conjecture
                         (ForAll
                              idents
                              (Equiv
                                   (Predicate "main_query_0" idents)
                                   (Predicate "main_query_1" idents)))
                         Nothing) :
                    queriesTptp
            return $
                "% Database scheme:\n" ++
                show (databaseScheme initialState) ++ "\n\n" ++
                (unlines $ Prelude.map show $ output ++ (buildAxioms (databaseScheme initialState)))
  where
    initialState =
        State
            (databaseSchemeFromAst -- calculate the database scheme
                 [(CreateTable names tableElements) | (CreateTable names tableElements) <- inputAst])
            ""

{- |
    trandslateMainQuery translates the AST of a single query into a TPTP formula
-}
trandslateMainQuery ::
       State            -- ^ Initial state
    -> Int              -- ^ Query number
    -> Statement        -- ^ Query AST
    -> Either String () -- ^ Error message or the TPTP translation of the query
trandslateMainQuery state queryNumber queryAst = do translateStatement state ("main_query_" ++ show queryNumber) queryAst

{- |
    translateStatement translates the AST of a SELECT statement into a FOF formula
-}
translateStatement ::
       State
    -> String                    -- ^ Query name
    -> Statement                 -- ^ Query AST
    -> Either String State -- ^ error or a tuple with table name, list of column names and the FofFormula with table definition
translateStatement state queryName stmt =
    case stmt of
        (SelectStatement (Select _ qeSelectList qeFrom qeWhere qeGroupBy qeHaving _ _ _)) ->
            (state, _, _) <- translateSelect state queryName qeSelectList qeFrom qeWhere qeGroupBy qeHaving
            return state
        _ -> fail "Unknown Statement"


{- |
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
translateSelect ::
       State
    -> String                     -- ^ Name/alias of the query
    -> [(ScalarExpr, Maybe Name)] -- ^ List of selected values (with optional aliases)
    -> [TableRef]                 -- ^ List of tables in the FROM clause
    -> Maybe ScalarExpr           -- ^ Optional WHERE clause
    -> [GroupingExpr]             -- ^ Optional GROUP BY clause
    -> Maybe ScalarExpr           -- ^ Optional HAVING clause
    -> Either String (State, String) -- ^ Error or a new state + global name of the predicate
translateSelect state name qeSelectList qeFrom qeWhere _ _ = do
    (newState, current_scope) <- translateQeFrom state qeFrom
    (columnNames, forAllIdents) <- translateQeSelectList newState qeSelectList
    let freeIdents = getFreeVars fromFormula
    let existsIdents = [x | x <- freeIdents, x `notElem` forAllIdents]
    whereFormula <- translateQeWhere newState qeWhere
    return
        ( name
        , columnNames
        , ForAll
              forAllIdents
              (Equiv
                   (Predicate name forAllIdents)
                   (Exists existsIdents (And fromFormula whereFormula))))

translateQeSelectList :: State -> [(ScalarExpr, Maybe Name)] -> Either String ([String], [String])
translateQeSelectList state qeSelectList = do
    translatedSelectListElems <- mapM (translateSelectListElem state) qeSelectList
    return $
        Prelude.foldr (\(x0, y0) (x, y) -> (x0 ++ x, y0 ++ y)) ([], []) translatedSelectListElems
  where
    translateSelectListElem ::
           State -> (ScalarExpr, Maybe Name) -> Either String ([String], [String])
    translateSelectListElem state ((Iden names), Nothing) =
        return
            ( [nameToString (last names)]
            , [addVariablePrefix state "" $ (intercalate "_" (Prelude.map nameToString names))])
    translateSelectListElem state (BinOp (Iden [Name _ tableName]) [Name Nothing "."] Star, Nothing) = do
        let columnNames = getColumnNames tableName (databaseScheme state)
        let variables = Prelude.map (addVariablePrefix state tableName) columnNames
        --let variables = Prelude.map (toVariable . ((++) (tableName ++ "_"))) columnNames
        return (columnNames, variables)
    nameToString (Name _ name) = name

translateQeFrom ::
           State
        -> [TableRef]
        -> Either String (State, [(String, String)]) -- Error or new state plus list of mappings current name -> global name
translateQeFrom state qeFrom = do
    tables <- mapM (translateTableRef state Nothing) qeFrom
    let fromFormulas =
            Prelude.map
                (\(name, columnNames, formula) ->
                     And
                         formula
                         (Predicate name (Prelude.map (addVariablePrefix state name) columnNames)))
                tables
    let fromFormula = Data.Foldable.foldr (\x y -> And x y) EmptyFormula fromFormulas
    let newState =
            state
                { databaseScheme =
                      addTables
                          (Prelude.map (\(name, columnNames, _) -> (name, columnNames)) tables)
                          (databaseScheme state)
                }
    return (newState, fromFormula)

addVariablePrefix :: State -> String -> String -> String
addVariablePrefix state "" name = toVariable $ (prefix state) ++ name
addVariablePrefix state p  name = toVariable $ (prefix state) ++ p ++ "_" ++ name

{- |
    translateTableRef translates every entry in the FROM clause (table reference) to an FOF formula
-}
translateTableRef ::
       State
    -> Maybe String              -- ^ optional alias
    -> TableRef                  -- ^ 
    -> Either String (State, String, String) -- ^ returns a new state + current name + global name
translateTableRef state name tableRef =
    case tableRef of
        (TRSimple names) -> translateTRSimple state name names
        (TRAlias tableRef (Alias (Name _ name) _)) -> do
            (new_state, _, global_name) <- translateTableRef state {prefix = prefix state ++ name ++ "_"} (Just name) tableRef
            return (new_state, name, global_name)
        (TRQueryExpr queryExpr) ->
            case name of
                (Just n) -> translateTRQueryExpr state n queryExpr
                Nothing -> fail "Unaliased query expression"
{- |
    translateQeWhere
-}
translateQeWhere :: State -> Maybe ScalarExpr -> Either String FofFormula
translateQeWhere state qeWhere =
    case qeWhere of
        Nothing -> return EmptyFormula
        (Just scalarExpr) -> translateScalarExpr state scalarExpr

{- |
    translateScalarExpr
-}
translateScalarExpr :: State -> ScalarExpr -> Either String FofFormula
translateScalarExpr state scalarExpr = do
    case scalarExpr of
        (BinOp (Iden names) binOpNames (Iden names2)) -> do
            let scalarExprFofFormula = toVariable $ (prefix state) ++ (namesToString names)
            let scalarExprFofFormula2 = toVariable $ (prefix state) ++ (namesToString names2)
            case binOpNames of
                [Name _ "="] ->
                    return (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2])
                [Name _ "<="] ->
                    return
                        (Predicate "lessThanOrEqual" [scalarExprFofFormula, scalarExprFofFormula2])
                [Name _ ">="] ->
                    return
                        (Predicate "lessThanOrEqual" [scalarExprFofFormula2, scalarExprFofFormula])
                [Name _ "<"] ->
                    return
                        (And (Predicate
                                  "lessThanOrEqual"
                                  [scalarExprFofFormula, scalarExprFofFormula2])
                             (Not (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2])))
                [Name _ ">"] ->
                    return
                        (And (Predicate
                                  "lessThanOrEqual"
                                  [scalarExprFofFormula2, scalarExprFofFormula])
                             (Not (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2])))
                [Name _ "!="] ->
                    return (Not (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2]))
                _ -> fail $ "Unknown BinOp expression: " ++ show (BinOp scalarExpr names scalarExpr)
        (BinOp scalarExpr binOpNames scalarExpr2) -> do
            scalarExprFofFormula <- translateScalarExpr state scalarExpr
            scalarExprFofFormula2 <- translateScalarExpr state scalarExpr2
            case binOpNames of
                [Name _ "&"  ] -> return (And scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "and"] -> return (And scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "|"  ] -> return (Or scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "or" ] -> return (Or scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "=>" ] -> return (Implies scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "<=>"] -> return (Equiv scalarExprFofFormula scalarExprFofFormula2)
                _ ->
                    fail $
                    "Unknown BinOp expression: " ++ show (BinOp scalarExpr binOpNames scalarExpr)
        (Parens scalarExpr) -> translateScalarExpr state scalarExpr

{- |
    translateTRSimple translates a simple table reference (table name)
-}
translateTRSimple :: State -> Maybe String -> [Name] -> Either String Translation
translateTRSimple state name names = do
    let tableName = namesToString names
    let columnNames = getColumnNames tableName (databaseScheme state)
    case name of
        (Just n) -> do
            let aliasedColumnNames = Prelude.map (addVariablePrefix state tableName) columnNames
            return
                ( n
                , columnNames
                , ForAll
                      aliasedColumnNames
                      (Equiv
                           (Predicate n aliasedColumnNames)
                           (Predicate tableName aliasedColumnNames)))
        Nothing -> return (tableName, columnNames, EmptyFormula)

{- |
    namesToString
-}
namesToString :: [Name] -> String
namesToString names = intercalate "_" (Prelude.map (\(Name _ name) -> name) names)
