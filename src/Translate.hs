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
    (
    -- * Functions
    -- ** translateStatements
    translateStatements
    ) where

import Axiom
import TptpSyntax
import FofFormula
import DatabaseScheme

import Data.Char
import Data.Either
import Data.Foldable
import Data.List.Index
import Data.List (length, intercalate)
import Data.Map
import Language.SQL.SimpleSQL.Syntax
import Prelude
import System.IO (stdin, hGetContents, hPutStrLn, stderr)
import Text.Show.Pretty (ppShow)

-- | Translator state
data State = State { databaseScheme :: DatabaseScheme
                   , prefix :: String
                   }

{- |
    The translateStatements function takes two lists of statements (the abstract syntax tree of a DDL and a query)
    and returns either an error message, when an eror occured during the translation of the query or two strings
    one of which contains the description of the database scheme, and the other contains the query translated to the TPTP syntax

    Statement structure described here: https://github.com/JakeWheat/simple-sql-parser/blob/master/Language/SQL/SimpleSQL/Syntax.lhs
-}
translateStatements :: [Statement]          -- ^ List of SQL statements -- either queries or database schema description
                    -> Either String String -- ^ Either error or database scheme description and translated query
translateStatements inputAst = do
    case [(SelectStatement queryExpr) | (SelectStatement queryExpr) <- inputAst] of
        [] -> return $ "% Database scheme:\n" ++ show (databaseScheme initialState) ++ "% NO QUERIES TO TRANSLATE"
        [queryAst] -> do
            output <- translateSingleQuery initialState 0 queryAst
            return $ "% Database scheme:\n" ++ show (databaseScheme initialState) ++ (unlines $ Prelude.map show $ (buildAxioms [output]) ++ [output])
        queriesAst -> do
            queriesTptp <- imapM (translateSingleQuery initialState) queriesAst
            let idents = (\(TptpFofFormula _ _ (ForAll x _) _) -> x) (head queriesTptp)
            let output = (TptpFofFormula "equivalence_check"
                                         Conjecture
                                         (ForAll idents (Equiv (Predicate "main_query_0" idents) (Predicate "main_query_1" idents)))
                                         Nothing):queriesTptp
            return $ "% Database scheme:\n" ++ show (databaseScheme initialState) ++ (unlines $ Prelude.map show $ (buildAxioms output) ++ output)
    where
        initialState = State (databaseSchemeFromAst [(CreateTable names tableElements) | (CreateTable names tableElements) <- inputAst]) ""

{- |
    translateSingleQuery
-}
translateSingleQuery :: State                    -- ^ Initial state
                     -> Int                      -- ^ Query number
                     -> Statement                -- ^ Query AST
                     -> Either String TptpFormula -- ^ Error message or the TPTP translation of the query
translateSingleQuery state queryNumber queryAst = do
    queryFofFormula <- translateStatement state ("main_query_" ++ show queryNumber) queryAst
    return $ TptpFofFormula ("main_query_" ++ show queryNumber ++ "_definition") Definition queryFofFormula Nothing

{- |
    translateStatement
-}
translateStatement :: State
                   -> String    -- ^ Query name
                   -> Statement -- ^ Query AST
                   -> Either String FofFormula
translateStatement state queryName stmt = case stmt of
    (SelectStatement (Select _ qeSelectList qeFrom qeWhere qeGroupBy qeHaving _ _ _)) -> do
        (selectList, queryFofFormula) <- translateSelect state qeSelectList qeFrom qeWhere qeGroupBy qeHaving
        return $ ForAll selectList (Equiv (Predicate queryName selectList) queryFofFormula)
    _ -> fail "Unknown Statement"

{- |
    translateQueryExpr
-}
translateQueryExpr :: State
                   -> QueryExpr
                   -> Either String FofFormula
translateQueryExpr state x = case x of
    (Select _ qeSelectList qeFrom qeWhere qeGroupBy qeHaving _ _ _) -> do
        (_, selectFofFormula) <- translateSelect state qeSelectList qeFrom qeWhere qeGroupBy qeHaving
        return selectFofFormula
    (QueryExprSetOp qe0 qeCombOp _ _ qe1) -> do
        translateQueryExpr state qe0
        translateQeCombOp state qeCombOp
        translateQueryExpr state qe1
    (Table names) -> translateTable state names
    _ -> fail "Unknown QueryExpr"

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
translateSelect :: State
                -> [(ScalarExpr, Maybe Name)]
                -> [TableRef]
                -> Maybe ScalarExpr
                -> [GroupingExpr]
                -> Maybe ScalarExpr
                -> Either String ([String], FofFormula)
translateSelect _ [] _ _ _ _ = return ([], EmptyFormula)
translateSelect state qeSelectList qeFrom qeWhere qeGroupBy qeHaving = do
    fromFofFormulas <- translateQeFrom state qeFrom
    forAllIdents <- translateQeSelectList state qeSelectList
    let fromFormula  = Data.Foldable.foldr (\x y -> And x y) EmptyFormula fromFofFormulas
    let idents = getVariables fromFormula -- All idents in FofFormula
    let existsIdents = [ x | x <- idents, x `notElem` forAllIdents ]

    whereFormula <- translateQeWhere state qeWhere
    -- translateQeGroupBy state qeGroupBy
    -- translateQeHaving state qeHaving

    return (forAllIdents, Exists existsIdents (And fromFormula whereFormula))

{- |
    translateQeCombOp
-}
translateQeCombOp :: State
                  -> SetOperatorName
                  -> Either String FofFormula
translateQeCombOp state qeCombOp = fail "Function translateQeCombOp not yet implemented"

{- |
    translateQeSelectList
-}
translateQeSelectList :: State
                      -> [(ScalarExpr, Maybe Name)]
                      -> Either String [String]
translateQeSelectList state qeSelectList = do
    mapM (translateSelectListElem state) qeSelectList
    where
        translateSelectListElem :: State
                                -> (ScalarExpr, Maybe Name)
                                -> Either String String
        translateSelectListElem state ((Iden names), Nothing) = return $ toVariable $ (prefix state) ++ (intercalate "_" (Prelude.map nameToString names))
        translateSelectListElem _ selectListElem = fail $ "Unknown selectListElem: " ++ show selectListElem

        nameToString (Name _ name) = name

{- |
    translateQeFrom translates the entire FROM clause to an FOF formula
-}
translateQeFrom :: State
                -> [TableRef]
                -> Either String [FofFormula]
translateQeFrom state qeFrom = mapM (translateTableRef state) qeFrom


{- |
    translateTableRef translates every entry in the FROM clause (table reference) to an FOF formula
-}
translateTableRef :: State
                  -> TableRef
                  -> Either String FofFormula
translateTableRef state tableRef = case tableRef of
    (TRSimple names) -> translateTRSimple state names
    (TRJoin tableRef1 nautral joinType tableRef2 joinCondition) -> fail "Function translateTRJoin not yet implemented"
    (TRParens tableRef) -> fail "Function translateTRParens not yet implemented"
    (TRAlias tableRef (Alias (Name _ name) _)) -> translateTableRef state{prefix = prefix state ++ name ++ "_"}tableRef
    (TRQueryExpr queryExpr) -> translateTRQueryExpr state queryExpr
    (TRFunction names scalarExprs) -> fail "Function translateTRFunction not yet implemented"
    (TRLateral tableRef) -> fail "Function translateTRLateral not yet implemented"
    (TROdbc tableRef) -> fail "Function translateTROdbc not yet implemented"

{- |
    translateTRQueryExpr
-}
translateTRQueryExpr :: State
                     -> QueryExpr
                     -> Either String FofFormula
translateTRQueryExpr = translateQueryExpr

{- |
    translateQeWhere
-}
translateQeWhere :: State
                 -> Maybe ScalarExpr
                 -> Either String FofFormula
translateQeWhere state qeWhere = case qeWhere of
    Nothing -> return EmptyFormula
    (Just scalarExpr) -> translateScalarExpr state scalarExpr

{- |
    translateScalarExpr
-}
translateScalarExpr :: State
                    -> ScalarExpr
                    -> Either String FofFormula
translateScalarExpr state scalarExpr = do
    case scalarExpr of
        (NumLit _) -> fail "Function translateScalarExpr not yet implemented for (NumLit _)"
        (StringLit _ _ _) -> fail "Function translateScalarExpr not yet implemented for (StringLit _ _ _)"
        (IntervalLit _ _ _ _) -> fail "Function translateScalarExpr not yet implemented for (IntervalLit _)"
        (TypedLit _ _) -> fail "Function translateScalarExpr not yet implemented for (TypedLit _ _)"
        (Iden names) -> fail $ "Iden names (" ++ show (Iden names) ++ ") cannot be represented as an FOF formula!"
        Star -> fail "Function translateScalarExpr not yet implemented for Star"
        Parameter -> fail "Function translateScalarExpr not yet implemented for Parameter"
        (PositionalArg _) -> fail "Function translateScalarExpr not yet implemented for (PositionalArg _)"
        (HostParameter _ _) -> fail "Function translateScalarExpr not yet implemented for (HostParameter _ _)"
        (BinOp (Iden names) binOpNames (Iden names2)) -> do
            let scalarExprFofFormula = toVariable $ (prefix state) ++ (namesToString names)
            let scalarExprFofFormula2 = toVariable $ (prefix state) ++ (namesToString names2)
            case binOpNames of
                [Name _ "="]  -> return (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2])
                [Name _ "<="]  -> return (Predicate "lessThanOrEqual" [scalarExprFofFormula, scalarExprFofFormula2])
                [Name _ ">="]  -> return (Predicate "lessThanOrEqual" [scalarExprFofFormula2, scalarExprFofFormula])
                [Name _ "<"] -> return (And (Predicate "lessThanOrEqual" [scalarExprFofFormula, scalarExprFofFormula2]) (Not (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2])))
                [Name _ ">"] -> return (And (Predicate "lessThanOrEqual" [scalarExprFofFormula2, scalarExprFofFormula]) (Not (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2])))
                [Name _ "!="] -> return (Not (Predicate "equal" [scalarExprFofFormula, scalarExprFofFormula2]))
                _ -> fail $ "Unknown BinOp expression: " ++ show (BinOp scalarExpr names scalarExpr)
        (BinOp scalarExpr binOpNames scalarExpr2) -> do
            scalarExprFofFormula <- translateScalarExpr state scalarExpr
            scalarExprFofFormula2 <- translateScalarExpr state scalarExpr2
            case binOpNames of
                [Name _ "&"] -> return (And scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "and"] -> return (And scalarExprFofFormula scalarExprFofFormula2)
                [Name _ " |"] -> return (Or scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "or"] -> return (Or scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "=>"] -> return (Implies scalarExprFofFormula scalarExprFofFormula2)
                [Name _ "<=>"] -> return (Equiv scalarExprFofFormula scalarExprFofFormula2)
                _ -> fail $ "Unknown BinOp expression: " ++ show (BinOp scalarExpr binOpNames scalarExpr)
        (PrefixOp names _) -> fail "Function translateScalarExpr not yet implemented for (PrefixOp names _)"
        (PostfixOp names _) -> fail "Function translateScalarExpr not yet implemented for (PostfixOp names _)"
        (SpecialOp names _) -> fail "Function translateScalarExpr not yet implemented for (SpecialOp names _)"
        (App names _) -> fail "Function translateScalarExpr not yet implemented for (App names _)"
        (AggregateApp _ _ _ _ _) -> fail "Function translateScalarExpr not yet implemented for (AggregateApp _)"
        (AggregateAppGroup _ _ _) -> fail "Function translateScalarExpr not yet implemented for (AggregateAppGroup _)"
        (WindowApp _ _ _ _ _) -> fail "Function translateScalarExpr not yet implemented for (WindowApp _)"
        (SpecialOpK names _ _) -> fail "Function translateScalarExpr not yet implemented for (SpecialOpK names _ _)"
        (Cast _ _) -> fail "Function translateScalarExpr not yet implemented for (Cast _ _)"
        (Case _ _ _) -> fail "Function translateScalarExpr not yet implemented for (Case _ _)"
        (Parens scalarExpr) -> translateScalarExpr state scalarExpr
        (In bool scalarExpr inPredValue) -> fail "Function translateScalarExpr not yet implemented for (In bool scalarExpr inPredValue)"
        (SubQueryExpr _ _) -> fail "Function translateScalarExpr not yet implemented for (SubQueryExpr _ _)"
        (QuantifiedComparison _ _ _ _) -> fail "Function translateScalarExpr not yet implemented for (QuantifiedComparison _ _ _ _)"
        (Match _ _ _) -> fail "Function translateScalarExpr not yet implemented for (Match _ _ _)"
        (Array scalarExpr scalarExprs) -> fail "Function translateScalarExpr not yet implemented for (Array scalarExpr scalarExprs)"
        (ArrayCtor queryExpr) -> fail "Function translateScalarExpr not yet implemented for (ArrayCtor queryExpr)"
        (Collate scalarExpr names) -> fail "Function translateScalarExpr not yet implemented for (Collate scalarExpr names)"
        (MultisetBinOp scalarExpr setOperatorName setQuantifier scalarExpr2) -> fail "Function translateScalarExpr not yet implemented for (MultisetBinOp scalarExpr setOperatorName setQuantifier scalarExpr2)"
        (MultisetCtor scalarExprs) -> fail "Function translateScalarExpr not yet implemented for (MultisetCtor scalarExprs)"
        (MultisetQueryCtor queryExpr) -> fail "Function translateScalarExpr not yet implemented for (MultisetQueryCtor queryExpr)"
        (NextValueFor names) -> fail "Function translateScalarExpr not yet implemented for (NextValueFor names)"
        (VEComment comments scalarExpr) -> fail "Function translateScalarExpr not yet implemented for (VEComment comments scalarExpr)"
        (OdbcLiteral odbcLiteralType str) -> fail "Function translateScalarExpr not yet implemented for (OdbcLiteral odbcLiteralType str)"
        (OdbcFunc scalarExpr) -> fail "Function translateScalarExpr not yet implemented for (OdbcFunc scalarExpr)"

{- |
    translateQeGroupBy
-}
translateQeGroupBy :: State
                   -> [GroupingExpr]
                   -> Either String ()
translateQeGroupBy state qeGroupBy = fail "Function translateQeGroupBy not yet implemented"

{- |
    translateQeHaving
-}
translateQeHaving :: State
                  -> Maybe ScalarExpr
                  -> Either String ()
translateQeHaving state qeHaving = fail "Function translateQeHaving not yet implemented"

{- |
    translateTRSimple translates a simple table reference (table name)
-}
translateTRSimple :: State
                  -> [Name]
                  -> Either String FofFormula
translateTRSimple state names = do
    let tableName = namesToString names
    let columnNames = getColumnNames tableName (databaseScheme state)
    let aliasedColumnNames = Prelude.map ((++) (prefix state)) columnNames
    return $ Predicate tableName aliasedColumnNames

{- |
    namesToString
-}
namesToString :: [Name] -> String
namesToString names = intercalate "_" (Prelude.map (\(Name _ name) -> name) names)

{- |
    translateJoinCondition
-}
translateJoinCondition :: State
                       -> Maybe JoinCondition
                       -> Either String FofFormula
translateJoinCondition state _ = fail "Function translateJoinCondition not yet implemented"

{- |
    translateTable
-}
translateTable :: State
               -> [Name]
               -> Either String FofFormula
translateTable state names = fail "Function translateTable not yet implemented"
