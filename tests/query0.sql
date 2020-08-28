SELECT a.col11 as dsd,
	a.col12
FROM tab1 as a,
tab1 as b,
(select c.col22 from tab2 as c) as d
WHERE a.col12 = a.col12 and
a1 = a1 or a2=a2 and (a3<a3 or a4<=a4);
