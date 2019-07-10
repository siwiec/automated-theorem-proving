SELECT fst,
       0,
       SUM(trd)
FROM (SELECT fst,
             0,
             trd
      FROM tab
      WHERE trd > 10 )
GROUP BY fst ;

