-- this query normally would not be equivalent to Query 20, since it could return duplicated values
SELECT
    tab1.col11,
    tab1.col12
FROM
    tab1,
    tab2
WHERE
    tab1.col11 = tab2.col21