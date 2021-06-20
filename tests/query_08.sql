SELECT
    subquery_alias.col11,
    subquery_alias.col12
FROM
    (
        SELECT
            tab1_alias.col11,
            tab1_alias.col12
        FROM
            tab1 AS tab1_alias
    ) AS subquery_alias
