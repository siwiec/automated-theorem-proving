SELECT alias.colalias
FROM 
    (Select col11 as colalias, col12 from tab1 where col11 = col12) as alias