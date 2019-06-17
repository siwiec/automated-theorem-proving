# Automated theorem proving


## Database scheme
```
CREATE TABLE tab (
  fst VARCHAR2(20),
  snd VARCHAR2(20),
  trd NUMBER(4)
  CONSTRAINT tab_pk PRIMARY KEY (fst, snd)
);
```

## Simple queries



### Query 1

```
SELECT a.fst,
       b.fst
FROM   tab a,
       tab b
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd
         AND a.snd < b.snd );
```

### Query 2
```
SELECT a.fst,
       b.fst
FROM   tab a,
       tab b
WHERE  ( a.fst = b.snd
         AND b.fst = a.snd );
```

## Queries with grouping


### Query 3
```
SELECT fst
FROM tab
WHERE trd > 10
GROUP BY fst ;
```

### Query 4

```
SELECT fst
FROM (SELECT fst,
             trd
      FROM tab
      WHERE trd > 10 )
GROUP BY fst ;
```
## Analysis

The only pair of equivalent queries is 3. and 4.

### Query 1

#### First order logic
<img src="https://latex.codecogs.com/gif.latex?%5Cbegin%7Balign*%7D%20%5Cforall_%7Bfst_a%2C%20fst_b%7D%5C%20q_1%28fst_a%2C%20fst_b%29%20%5Ciff%20%5Cexists_%7Bsnd_a%2C%20snd_b%7D%20%5C%20%28%26tab%28fst_a%2C%20snd_a%29%20%5C%5C%20%5Cwedge%20%5C%20%26%20tab%28fst_b%2C%20snd_b%29%20%5C%5C%20%5Cwedge%20%5C%20%26%20fst_b%20%3D%20snd_a%20%5C%5C%20%5Cwedge%20%5C%20%26%20fst_a%20%3D%20snd_b%20%5C%5C%20%5Cwedge%20%5C%20%26%20snd_b%20%3C%20snd_a%29%20%5C%5C%20%5Cend%7Balign*%7D" />

#### TPTP
[TPTP form of Query 1.](tptp/query1.tptp)
### Query 2

#### First order logic
<img src="https://latex.codecogs.com/gif.latex?%5Cbegin%7Balign*%7D%20%5Cforall_%7Bfst_a%2C%20fst_b%7D%5C%20q_2%28fst_a%2C%20fst_b%29%20%5Ciff%20%5Cexists_%7Bsnd_a%2C%20snd_b%7D%20%5C%20%28%26tab%28fst_a%2C%20snd_a%29%20%5C%5C%20%5Cwedge%20%5C%20%26%20tab%28fst_b%2C%20snd_b%29%20%5C%5C%20%5Cwedge%20%5C%20%26%20fst_b%20%3D%20snd_a%20%5C%5C%20%5Cwedge%20%5C%20%26%20fst_a%20%3D%20snd_b%20%29%20%5C%5C%20%5Cend%7Balign*%7D" />

#### TPTP
[TPTP form of Query 2.](tptp/query2.tptp)

### Query 3

#### First order logic
TODO

#### TPTP
[TPTP form of Query 3.](tptp/query3.tptp)
### Query 4

#### First order logic

#### TPTP
[TPTP form of Query 4.](tptp/query4.tptp)

## Equivalence tests

[TPTP form of the equivalence check for queries 1. and 2.](tptp/equiv12.tptp)
[TPTP form of the equivalence check for queries 3. and 4.](tptp/equiv34.tptp)
