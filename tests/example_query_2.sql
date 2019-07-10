SELECT a.fst,
       b.fst
FROM   tab a,
       tab b
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd );
