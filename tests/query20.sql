SELECT
    tab1.col11
FROM
    tab1
WHERE
    tab1.col11 in (
        SELECT
            alias.col11
        FROM
            (
                SELECT
                    tab1.col11,
                    tab1.col12
                FROM
                    tab1
                WHERE
                    tab1.col11 = tab1.col12
            ) as alias
    )