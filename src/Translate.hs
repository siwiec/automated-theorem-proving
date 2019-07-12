{-|
Module      : Translate
Description : Module exports datatypes and functions for managing the database scheme
Copyright   :
License     : MIT
Maintainer  : mat.siwiec@gmail.com
Stability   : experimental
Portability : POSIX

Here is a longer description of this module, containing some
commentary with @some markup@.
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
import Data.Map ( Map, lookup, insert, empty, member, notMember, elems, union )
import Data.Either
import Data.Maybe
import Data.List ( length, intercalate )
import System.Environment ( getArgs )
import Control.Monad.State
import System.FilePath.Posix
import Control.Monad.Error
import Data.Char

type Store = (DatabaseScheme, [TptpFormula]
             )


type Eval a = ErrorT String (StateT Store IO) a

runTranslate initStore error = runStateT (runErrorT error) initStore

fofEmit :: String       -- Name
        -> Role         -- Role
        -> FofFormula   -- FofFormula
        -> Maybe String -- Annotations
        -> Eval ()
fofEmit n r f a = modify $ \(databaseScheme, store) -> (databaseScheme, store ++ [TptpFofFormula n r f a])

{- |
    The translateStatements function takes two lists of statements (the abstract syntax tree of a DDL and a query)
    and returns either an error message, when an eror occured during the translation of the query or two strings
    one of which contains the description of the database scheme, and the other contains the query translated to the TPTP syntax

    Statement structure described here: https://github.com/JakeWheat/simple-sql-parser/blob/master/Language/SQL/SimpleSQL/Syntax.lhs
-}
translateStatements :: [Statement] -- ^ databaseSchemeAst
                    -> [Statement] -- ^ queryAst
                    -> IO (Either String (String, String))
translateStatements parsedDatabaseScheme parsedQuery = do
    let databaseScheme = databaseSchemeFromAst parsedDatabaseScheme
    result <- runTranslate (databaseScheme, []) (mapM_ translateStatement parsedQuery)
    case result of
        (Left errorMsg, _) -> do
            fail $ "Translation error: " ++ errorMsg
        (Right _, (databaseScheme, output)) -> return $ Right $ ((show databaseScheme), (concat(map show output)))

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
    let existsIdents = [ id | id <- idents, notElem id forAllIdents ]
    let formula = Equiv (ForAll forAllIdents selectFormula) (And (Exists existsIdents fromFormula) EmptyFormula)
    (_, store) <- get
    fofEmit ("select_" ++ ( show (length store))) Axiom formula Nothing

translateQeCombOp :: SetOperatorName
                  -> Eval ()
translateQeCombOp qeCombOp = throwError "Function not yet implemented"

translateQeSelectList :: [(ScalarExpr,Maybe Name)]
                      -> Eval ([String], FofFormula)
translateQeSelectList qeSelectList = do
    let idents = map (intercalate "_") $
                    map (\(Iden ns, _) ->
                        map (\(Name _ n) -> n) ns
                        ) qeSelectList
    -- idents holds the names of columns
    --queryName <- getNewQueryName
    return (idents, EmptyFormula)

translateQeFrom :: [TableRef]
                -> Eval ([String], FofFormula)
translateQeFrom qeFrom = throwError "Function not yet implemented"

translateQeWhere :: Maybe ScalarExpr
                 -> Eval ()
translateQeWhere qeWhere = throwError "Function not yet implemented"

translateQeGroupBy :: [GroupingExpr]
                   -> Eval ()
translateQeGroupBy qeGroupBy = throwError "Function not yet implemented"

translateQeHaving :: Maybe ScalarExpr
                  -> Eval ()
translateQeHaving qeHaving = throwError "Function not yet implemented"

translateTable :: Name
               -> Eval ()
translateTable name = throwError "Function not yet implemented"
