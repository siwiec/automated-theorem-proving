SELECT
    subquery_alias.col11,
    subquery_alias.col12
FROM
    (
        SELECT
            tab1.col11,
            tab1.col12
        FROM
            tab1
        WHERE
            tab1.col11 <= tab1.col12
    )
WHERE
    subquery_alias.col11 >= subquery_alias.col12