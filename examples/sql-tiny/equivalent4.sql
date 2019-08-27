CREATE TABLE tab (
  fst NUMBER(4),
  snd NUMBER(4),
  trd NUMBER(4),
  CONSTRAINT tab_pk PRIMARY KEY (fst, snd)
);

SELECT a.fst
FROM   tab a
WHERE  ( a.fst = a.snd );


SELECT a.fst
FROM   tab a,
       tab b
WHERE (a.fst = a.snd);
