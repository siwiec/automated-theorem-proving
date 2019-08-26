CREATE TABLE tab (
  fst NUMBER(4),
  snd NUMBER(4),
  trd NUMBER(4),
  CONSTRAINT tab_pk PRIMARY KEY (fst, snd)
);


SELECT c.snd, a.fst
FROM tab AS a,
     (SELECT tab.snd, tab.fst from tab) AS c
WHERE
    c.fst = a.snd
    AND c.snd = a.snd
