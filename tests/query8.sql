SELECT c.snd, a.fst
FROM tab AS a,
     (SELECT tab.snd, tab.fst FROM tab) AS c
WHERE
    c.fst = a.snd
    AND c.snd = a.snd
