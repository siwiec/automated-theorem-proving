SELECT
    tab1.col11,
    tab1.col12 AS col12_alias,
    tab2_alias.col12,
    tab2_alias.col22 AS col22_alias,
    subquery.subquery_col
FROM
    tab1,
    tab2 as tab2_alias,
    (
        SELECT
            tab1.col11 AS subquery_col
        FROM
            tab1
    ) AS subquery
WHERE
    (
        tab1.col11 < col12_alias AND
        tab2_alias.col12 IN (
            SELECT
                tab1.col11
            FROM
                tab1
        )
    ) OR (tab2_alias.col12 <= subquery.subquery_col)
