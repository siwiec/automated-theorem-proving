# Automated theorem proving

## Documentation
Haddock documentation is available here: http://htmlpreview.github.io/?https://github.com/siwiec/automated-theorem-proving/blob/master/docs/index.html

Overleaf: https://www.overleaf.com/read/dcwmswrxkfnr

## Bibliography
All the docs are available here: https://drive.google.com/drive/folders/1RAiGQUIDItKK5r32ny5STF44cFdxWewN?usp=sharing

## Installation and testing

```
git clone
cd automated-theorem-proving
make test
```




```
CREATE TABLE tab (
  fst NUMBER(4),
  snd NUMBER(4),
  trd NUMBER(4),
  CONSTRAINT tab_pk PRIMARY KEY (fst, snd)
);

SELECT a.fst,
       b.fst
FROM   (SELECT c.fst,
               d.fst
        FROM tab c,
             tab d) AS a,
       tab b
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd
         AND a.snd < b.snd );
