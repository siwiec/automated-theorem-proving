CREATE TABLE tab (
  fst NUMBER(4),
  snd NUMBER(4),
  trd NUMBER(4),
  CONSTRAINT tab_pk PRIMARY KEY (fst, snd)
);

SELECT a.fst
FROM   tab a
WHERE  ( a.snd = a.snd );


SELECT a.fst
FROM   tab a
WHERE  ( a.fst = a.fst );
