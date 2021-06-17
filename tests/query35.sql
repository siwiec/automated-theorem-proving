SELECT
    tab1.col11,
    tab1.col12
FROM
    tab1
WHERE
    tab1.col11 NOT IN (
        SELECT
            tab2.col21
        FROM
            tab2
    )