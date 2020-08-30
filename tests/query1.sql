SELECT a.fst as fst,
       b.fst as fst1
FROM   tab a,
       tab b
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd );
