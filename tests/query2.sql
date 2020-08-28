SELECT a.fst,
       b.fst
FROM   tab a,
       tab b,
       tab c
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd
         AND c.fst = c.fst );
