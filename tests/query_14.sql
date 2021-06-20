SELECT
    tab1.col11,
    tab1.col12
FROM
    tab1
WHERE
    (NOT tab1.col11 < tab1.col12) AND
    (NOT tab1.col11 > tab1.col12)
