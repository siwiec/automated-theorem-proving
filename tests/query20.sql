SELECT col11
FROM tab1
WHERE col11 in (
    select alias.col11 from
    (Select col11, col12 from tab1 where col11 = col12) as alias
)