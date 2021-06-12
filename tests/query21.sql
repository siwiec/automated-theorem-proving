SELECT alias.col11
FROM 
    (Select col11, col12 from tab1 where col11 = col12) as alias