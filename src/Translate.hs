module Translate
    (translateStatements
    -- ,TranslateError
    -- ,teFormattedError
    ) where

import Language.SQL.SimpleSQL.Syntax
import TptpSyntax



import System.IO ( stdin, hGetContents, hPutStrLn, stderr )
import System.Exit
import Prelude
import Data.Map ( Map, lookup, insert, empty, member, notMember, elems, union )
import Data.Either
import Data.Maybe
import Data.List ( length )
import System.Environment ( getArgs )
import Control.Monad.State
import System.FilePath.Posix
import Control.Monad.Error
import Data.Char


-- Statement structure described here: https://github.com/JakeWheat/simple-sql-parser/blob/master/Language/SQL/SimpleSQL/Syntax.lhs


type Store = ([TptpFormula]
             )

initStore = []


type Eval a = ErrorT String (StateT Store IO) a

runTranslate initStore error = runStateT (runErrorT error) initStore

fofEmit :: String       -- Name
        -> Role         -- Role
        -> String       -- FofFormula
        -> Maybe String -- Annotations
        -> Eval ()
fofEmit n r f a = modify $ \store -> store ++ [TptpFofFormula n r f a]

translateStatements :: [Statement]
                    -> IO (Either String String)
translateStatements ss = do
    result <- runTranslate initStore (mapM_ translateStatement ss)
    case result of
        (Left errorMsg, _) -> do
            fail $ "Translation error: " ++ errorMsg
        (Right _, (tptpFormulas)) -> return $ Right $ concat(map show tptpFormulas)



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

translateSelect qeSelectList qeFrom qeWhere qeGroupBy qeHaving = do
    translateQeSelectList qeSelectList
    translateQeFrom qeFrom
    translateQeWhere qeWhere
    translateQeGroupBy qeGroupBy
    translateQeHaving qeHaving


translateQeCombOp :: SetOperatorName
                  -> Eval ()
translateQeCombOp qeCombOp = throwError "Function not yet implemented"

translateQeSelectList :: [(ScalarExpr,Maybe Name)]
                      -> Eval ()
translateQeSelectList qeSelectList = throwError "Function not yet implemented"

translateQeFrom :: [TableRef]
                -> Eval ()
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
