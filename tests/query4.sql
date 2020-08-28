SELECT a.fst,
       b.fst
FROM   tab a,
       tab b
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd
         AND a.snd <= b.snd
         AND b.snd >= b.snd );