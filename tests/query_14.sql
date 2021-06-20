SELECT
    tab1.col11,
    tab1.col12
FROM
    tab1
WHERE
    (not tab1.col11 < tab1.col12) and
    (not tab1.col11 > tab1.col12)
