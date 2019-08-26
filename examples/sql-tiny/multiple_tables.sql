CREATE TABLE tab (
  fst NUMBER(4),
  snd NUMBER(4),
  trd NUMBER(4),
  CONSTRAINT tab_pk PRIMARY KEY (fst, snd)
);

CREATE TABLE tab2 (
  fst NUMBER(4),
  snd NUMBER(4),
  trd NUMBER(4),
  fourth NUMBER(4),
  fifth NUMBER(4),
  CONSTRAINT tab_pk PRIMARY KEY (fst, snd)
);

SELECT a.fst,
       b.fst
FROM   tab a,
       tab2 b
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd
         AND a.snd < b.snd );