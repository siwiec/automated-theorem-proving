SELECT
    tab1.col11,
    tab1.col12 AS col12_alias
FROM
    tab1
WHERE
    tab1.col11 IN (
        SELECT
            tab1.col11
        FROM
            tab1
        WHERE
            tab1.col11 = col12_alias -- external variable
    )