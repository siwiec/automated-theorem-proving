SELECT a.*
FROM   tab a,
       tab b
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd
         AND a.snd < b.snd );
