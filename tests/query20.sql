SELECT tab1.col11
FROM tab1
WHERE tab1.col11 in (
    select alias.col11 from
    (Select tab1.col11, tab1.col12 from tab1 where tab1.col11 = tab1.col12) as alias
)