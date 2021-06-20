SELECT
    tab1.col11,
    tab1.col12
FROM
    tab1,
    tab2
WHERE
    (
        tab1.col11 NOT IN (
            SELECT
                tab2.col21
            FROM
                tab2
            WHERE
                tab2.col21 != tab1.col11 -- external variable
        )
    ) AND (
        tab1.col11 IN (
            SELECT
                tab2.col21
            FROM
                tab2
            WHERE
                tab2.col21 = tab1.col11 -- external variable
        )
    )

