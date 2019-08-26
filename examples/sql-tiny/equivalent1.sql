CREATE TABLE tab (
  fst NUMBER(4),
  snd NUMBER(4),
  trd NUMBER(4),
  CONSTRAINT tab_pk PRIMARY KEY (fst, snd)
);

SELECT a.fst,
       b.fst
FROM   tab a,
       tab b
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd );


SELECT a.fst,
       b.fst
FROM   tab a,
       tab b,
       tab c
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd
         AND c.fst = c.fst );