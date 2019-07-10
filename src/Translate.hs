module Translate
    (translateStatements
    -- ,TranslateError
    -- ,teFormattedError
    ) where

import Language.SQL.SimpleSQL.Syntax (Statement)
import TptpSyntax

-- Statement structure described here: https://github.com/JakeWheat/simple-sql-parser/blob/master/Language/SQL/SimpleSQL/Syntax.lhs



type State = ([TptpFormula]
             )

initialState = []

translateStatements :: [Statement]
                    -> Either TranslateError [TptpFormula]
translateStatements = (mapM translateStatement)

translateStatement :: Statements
                   -> Either TranslateError [TptpFormula]
translateStatement x = case x of
    (SelectStatement queryExpr) -> translateQueryExpr queryExpr
    _ -> ERROR

translateQueryExpr :: QueryExpr
               -> Either TranslateError [TptpFormula]
translateQueryExpr x = case x of
    (Select _ qeSelectList qeFrom qeWhere qeGroupBy qeHaving _ _ _) -> translateSelect qeSelectList qeFrom qeWhere qeGroupBy qeHaving
    (QueryExprSetOp qe0 qeCombOp _ _ qe1) -> do
        translateQueryExpr qe0
        translateQeCombOp qeCombOp
        translateQueryExpr qe1
    (Table names) -> mapM traslateTable names
    _ -> ERROR

translateSelect :: [(ScalarExpr,Maybe Name)]
                -> [TableRef]
                -> Maybe ScalarExpr
                -> [GroupingExpr]
                -> Maybe ScalarExpr
                -> Either TranslateError [TptpFormula]

translateSelect qeSelectList qeFrom qeWhere qeGroupBy qeHaving = do
    translateQeSelectList qeSelectList
    translateQeFrom qeFrom
    translateQeWhere qeWhere
    translateQeGroupBy qeGroupBy
    translateQeHaving qeHaving

translateQeCombOp qeCombO
translateQeSelectList qeSelectList
translateQeFrom qeFrom
translateQeWhere qeWhere
translateQeGroupBy qeGroupBy
translateQeHaving qeHaving
translateTable name
