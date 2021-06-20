SELECT
    tab1.col11,
    tab1.col12
FROM
    tab1
WHERE
    (tab1.col11 = tab1.col12) AND
        (tab1.col11 IN (
            SELECT tab1.col11 FROM tab1
        ))
