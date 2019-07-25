CREATE TABLE tab (
  fst NUMBER(4),
  snd NUMBER(4),
  trd NUMBER(4),
  CONSTRAINT tab_pk PRIMARY KEY (fst, snd)
);

SELECT fst,
       0,
       SUM(trd)
FROM (SELECT fst,
             0,
             trd
      FROM tab
      WHERE trd > 10 )
GROUP BY fst ;
