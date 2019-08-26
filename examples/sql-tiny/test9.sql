CREATE TABLE tab (
  fst NUMBER(4),
  snd NUMBER(4),
  trd NUMBER(4),
  CONSTRAINT tab_pk PRIMARY KEY (fst, snd)
);


SELECT b.fst
FROM tab AS a,
     tab AS b
WHERE
    b.fst = a.snd
    AND b.fst=b.snd

SELECT b.fst
FROM tab AS b
WHERE b.fst =b.snd
