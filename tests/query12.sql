SELECT b.fst
FROM tab AS a,
     tab AS b
WHERE
    b.fst = a.snd
    AND b.fst=b.snd