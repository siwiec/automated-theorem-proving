# Automated theorem proving

## Documentation
Rendered documentation is available here: http://htmlpreview.github.io/?https://github.com/siwiec/automated-theorem-proving/blob/master/docs/index.html

## Database scheme
```
CREATE TABLE tab (
  fst NUMBER(4),
  snd NUMBER(4),
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
SELECT fst,
       0,
       SUM(trd)
FROM tab
WHERE trd > 10
GROUP BY fst ;
```

### Query 4

```
SELECT fst,
       0,
       SUM(trd)
FROM (SELECT fst,
             0,
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

### Query 2

#### First order logic
<img src="https://latex.codecogs.com/gif.latex?%5Cbegin%7Balign*%7D%20%5Cforall_%7Bfst_a%2C%20fst_b%7D%5C%20q_2%28fst_a%2C%20fst_b%29%20%5Ciff%20%5Cexists_%7Bsnd_a%2C%20snd_b%7D%20%5C%20%28%26tab%28fst_a%2C%20snd_a%29%20%5C%5C%20%5Cwedge%20%5C%20%26%20tab%28fst_b%2C%20snd_b%29%20%5C%5C%20%5Cwedge%20%5C%20%26%20fst_b%20%3D%20snd_a%20%5C%5C%20%5Cwedge%20%5C%20%26%20fst_a%20%3D%20snd_b%20%29%20%5C%5C%20%5Cend%7Balign*%7D" />


### Query 3

#### First order logic
TODO

### Query 4

#### First order logic

## Equivalence tests

[TPTP form of the equivalence check for queries 1. and 2.](tptp/equiv12.tptp)


[TPTP form of the equivalence check for queries 3. and 4.](tptp/equiv34.tptp)

### Current output

```
% Starting sequential portfolio solving with schedule "casc"
% spawned child 7701 with time: 4 (total remaining time 2999)
% dis+10_1_add=off:afp=40000:afq=1.1:amm=off:anc=none:cond=on:fsr=off:irw=on:nm=64:nwc=1:sas=z3:sac=on_2 on equiv12
% Refutation found. Thanks to Tanya!
% SZS status Theorem for equiv12
% SZS output start Proof for equiv12
tff(type_def_5, type, record: $tType).
tff(type_def_6, type, database: $tType).
tff(func_def_0, type, r: ($int * record) > record).
tff(func_def_1, type, empty_record: record).
tff(func_def_2, type, db: (record * database) > database).
tff(func_def_3, type, empty_database: database).
tff(func_def_4, type, sK0: database).
tff(func_def_5, type, sK1: $int).
tff(func_def_6, type, sK2: $int).
tff(func_def_7, type, sK3: record > $int).
tff(func_def_8, type, sK4: record > $int).
tff(func_def_9, type, sK5: record > $int).
tff(func_def_10, type, sK6: (database * $int * $int) > $int).
tff(func_def_11, type, sK7: (database * $int * $int) > $int).
tff(func_def_12, type, sK8: (database * $int * $int) > $int).
tff(func_def_13, type, sK9: (database * $int * $int) > $int).
tff(func_def_14, type, sK10: (database * $int * $int) > $int).
tff(func_def_15, type, sK11: (database * $int * $int) > $int).
tff(func_def_16, type, sK12: (database * $int * $int) > $int).
tff(func_def_17, type, sK13: (database * $int * $int) > $int).
tff(pred_def_1, type, empty_record_condition: record > $o).
tff(pred_def_2, type, valid_record: record > $o).
tff(pred_def_3, type, empty_database_condition: database > $o).
tff(pred_def_4, type, database_member: (record * database) > $o).
tff(pred_def_5, type, query1: (database * $int * $int) > $o).
tff(pred_def_6, type, query2: (database * $int * $int) > $o).
tff(pred_def_7, type, tab: (database * $int * $int * $int) > $o).
tff(f1,axiom,(
  empty_record_condition(empty_record)),
  file('./tptp/equiv12.tptp',empty_record)).
tff(f2,axiom,(
  ! [X0 : $int,X1 : record] : ~empty_record_condition(r(X0,X1))),
  file('./tptp/equiv12.tptp',nonempty_record)).
tff(f3,axiom,(
  ! [X2 : record] : (valid_record(X2) <=> ? [X0 : $int,X3 : $int,X4 : $int] : r(X0,r(X3,r(X4,empty_record))) = X2)),
  file('./tptp/equiv12.tptp',valid_record)).
tff(f4,axiom,(
  empty_database_condition(empty_database)),
  file('./tptp/equiv12.tptp',empty_database)).
tff(f7,axiom,(
  ! [X0 : record,X1 : database] : (~valid_record(X0) => ~database_member(X0,X1))),
  file('./tptp/equiv12.tptp',database_with_only_valid_records)).
tff(f8,axiom,(
  ! [X0 : record,X1 : database] : database_member(X0,db(X0,X1))),
  file('./tptp/equiv12.tptp',database_member)).
tff(f11,axiom,(
  ! [X5 : database,X9 : $int,X10 : $int] : (query1(X5,X9,X10) <=> ? [X11 : $int,X12 : $int,X13 : $int,X14 : $int] : ($greater(X11,X12) & X9 = X12 & X10 = X11 & tab(X5,X10,X12,X14) & tab(X5,X9,X11,X13)))),
  file('./tptp/equiv12.tptp',query1)).
tff(f12,axiom,(
  ! [X5 : database,X9 : $int,X10 : $int] : (query2(X5,X9,X10) <=> ? [X11 : $int,X12 : $int,X13 : $int,X14 : $int] : (X9 = X12 & X10 = X11 & tab(X5,X10,X12,X14) & tab(X5,X9,X11,X13)))),
  file('./tptp/equiv12.tptp',query2)).
tff(f13,conjecture,(
  ! [X5 : database,X9 : $int,X10 : $int] : (query1(X5,X9,X10) <=> query2(X5,X9,X10))),
  file('./tptp/equiv12.tptp',equiv12)).
tff(f14,negated_conjecture,(
  ~! [X5 : database,X9 : $int,X10 : $int] : (query1(X5,X9,X10) <=> query2(X5,X9,X10))),
  inference(negated_conjecture,[],[f13])).
tff(f15,plain,(
  ! [X5 : database,X9 : $int,X10 : $int] : (query1(X5,X9,X10) <=> ? [X11 : $int,X12 : $int,X13 : $int,X14 : $int] : ($less(X12,X11) & X9 = X12 & X10 = X11 & tab(X5,X10,X12,X14) & tab(X5,X9,X11,X13)))),
  inference(evaluation,[],[f11])).
tff(f16,plain,(
  ~! [X0 : database,X1 : $int,X2 : $int] : (query1(X0,X1,X2) <=> query2(X0,X1,X2))),
  inference(rectify,[],[f14])).
tff(f17,plain,(
  ! [X0 : record] : (valid_record(X0) <=> ? [X1 : $int,X2 : $int,X3 : $int] : r(X1,r(X2,r(X3,empty_record))) = X0)),
  inference(rectify,[],[f3])).
tff(f19,plain,(
  ! [X0 : database,X1 : $int,X2 : $int] : (query2(X0,X1,X2) <=> ? [X3 : $int,X4 : $int,X5 : $int,X6 : $int] : (X1 = X4 & X2 = X3 & tab(X0,X2,X4,X6) & tab(X0,X1,X3,X5)))),
  inference(rectify,[],[f12])).
tff(f20,plain,(
  ! [X0 : database,X1 : $int,X2 : $int] : (query1(X0,X1,X2) <=> ? [X3 : $int,X4 : $int,X5 : $int,X6 : $int] : ($less(X4,X3) & X1 = X4 & X2 = X3 & tab(X0,X2,X4,X6) & tab(X0,X1,X3,X5)))),
  inference(rectify,[],[f15])).
tff(f22,plain,(
  ! [X0 : record] : (valid_record(X0) => ? [X1 : $int,X2 : $int,X3 : $int] : r(X1,r(X2,r(X3,empty_record))) = X0)),
  inference(unused_predicate_definition_removal,[],[f17])).
tff(f23,plain,(
  ? [X0 : database,X1 : $int,X2 : $int] : (query1(X0,X1,X2) <~> query2(X0,X1,X2))),
  inference(ennf_transformation,[],[f16])).
tff(f24,plain,(
  ! [X0 : record] : (? [X1 : $int,X2 : $int,X3 : $int] : r(X1,r(X2,r(X3,empty_record))) = X0 | ~valid_record(X0))),
  inference(ennf_transformation,[],[f22])).
tff(f25,plain,(
  ! [X0 : record,X1 : database] : (~database_member(X0,X1) | valid_record(X0))),
  inference(ennf_transformation,[],[f7])).
tff(f27,plain,(
  ? [X0 : database,X1 : $int,X2 : $int] : ((~query2(X0,X1,X2) | ~query1(X0,X1,X2)) & (query2(X0,X1,X2) | query1(X0,X1,X2)))),
  inference(nnf_transformation,[],[f23])).
tff(f28,plain,(
  ? [X0 : database,X1 : $int,X2 : $int] : ((~query2(X0,X1,X2) | ~query1(X0,X1,X2)) & (query2(X0,X1,X2) | query1(X0,X1,X2))) => ((~query2(sK0,sK1,sK2) | ~query1(sK0,sK1,sK2)) & (query2(sK0,sK1,sK2) | query1(sK0,sK1,sK2)))),
  introduced(choice_axiom,[])).
tff(f29,plain,(
  (~query2(sK0,sK1,sK2) | ~query1(sK0,sK1,sK2)) & (query2(sK0,sK1,sK2) | query1(sK0,sK1,sK2))),
  inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f27,f28])).
tff(f30,plain,(
  ! [X0 : record] : (? [X1 : $int,X2 : $int,X3 : $int] : r(X1,r(X2,r(X3,empty_record))) = X0 => r(sK3(X0),r(sK4(X0),r(sK5(X0),empty_record))) = X0)),
  introduced(choice_axiom,[])).
tff(f31,plain,(
  ! [X0 : record] : (r(sK3(X0),r(sK4(X0),r(sK5(X0),empty_record))) = X0 | ~valid_record(X0))),
  inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f24,f30])).
tff(f32,plain,(
  ! [X0 : database,X1 : $int,X2 : $int] : ((query2(X0,X1,X2) | ! [X3 : $int,X4 : $int,X5 : $int,X6 : $int] : (X1 != X4 | X2 != X3 | ~tab(X0,X2,X4,X6) | ~tab(X0,X1,X3,X5))) & (? [X3 : $int,X4 : $int,X5 : $int,X6 : $int] : (X1 = X4 & X2 = X3 & tab(X0,X2,X4,X6) & tab(X0,X1,X3,X5)) | ~query2(X0,X1,X2)))),
  inference(nnf_transformation,[],[f19])).
tff(f33,plain,(
  ! [X0 : database,X1 : $int,X2 : $int] : ((query2(X0,X1,X2) | ! [X3 : $int,X4 : $int,X5 : $int,X6 : $int] : (X1 != X4 | X2 != X3 | ~tab(X0,X2,X4,X6) | ~tab(X0,X1,X3,X5))) & (? [X7 : $int,X8 : $int,X9 : $int,X10 : $int] : (X1 = X8 & X2 = X7 & tab(X0,X2,X8,X10) & tab(X0,X1,X7,X9)) | ~query2(X0,X1,X2)))),
  inference(rectify,[],[f32])).
tff(f34,plain,(
  ! [X2 : $int,X1 : $int,X0 : database] : (? [X7 : $int,X8 : $int,X9 : $int,X10 : $int] : (X1 = X8 & X2 = X7 & tab(X0,X2,X8,X10) & tab(X0,X1,X7,X9)) => (sK7(X0,X1,X2) = X1 & sK6(X0,X1,X2) = X2 & tab(X0,X2,sK7(X0,X1,X2),sK9(X0,X1,X2)) & tab(X0,X1,sK6(X0,X1,X2),sK8(X0,X1,X2))))),
  introduced(choice_axiom,[])).
tff(f35,plain,(
  ! [X0 : database,X1 : $int,X2 : $int] : ((query2(X0,X1,X2) | ! [X3 : $int,X4 : $int,X5 : $int,X6 : $int] : (X1 != X4 | X2 != X3 | ~tab(X0,X2,X4,X6) | ~tab(X0,X1,X3,X5))) & ((sK7(X0,X1,X2) = X1 & sK6(X0,X1,X2) = X2 & tab(X0,X2,sK7(X0,X1,X2),sK9(X0,X1,X2)) & tab(X0,X1,sK6(X0,X1,X2),sK8(X0,X1,X2))) | ~query2(X0,X1,X2)))),
  inference(skolemisation,[status(esa),new_symbols(skolem,[sK6,sK7,sK8,sK9])],[f33,f34])).
tff(f36,plain,(
  ! [X0 : database,X1 : $int,X2 : $int] : ((query1(X0,X1,X2) | ! [X3 : $int,X4 : $int,X5 : $int,X6 : $int] : (~$less(X4,X3) | X1 != X4 | X2 != X3 | ~tab(X0,X2,X4,X6) | ~tab(X0,X1,X3,X5))) & (? [X3 : $int,X4 : $int,X5 : $int,X6 : $int] : ($less(X4,X3) & X1 = X4 & X2 = X3 & tab(X0,X2,X4,X6) & tab(X0,X1,X3,X5)) | ~query1(X0,X1,X2)))),
  inference(nnf_transformation,[],[f20])).
tff(f37,plain,(
  ! [X0 : database,X1 : $int,X2 : $int] : ((query1(X0,X1,X2) | ! [X3 : $int,X4 : $int,X5 : $int,X6 : $int] : (~$less(X4,X3) | X1 != X4 | X2 != X3 | ~tab(X0,X2,X4,X6) | ~tab(X0,X1,X3,X5))) & (? [X7 : $int,X8 : $int,X9 : $int,X10 : $int] : ($less(X8,X7) & X1 = X8 & X2 = X7 & tab(X0,X2,X8,X10) & tab(X0,X1,X7,X9)) | ~query1(X0,X1,X2)))),
  inference(rectify,[],[f36])).
tff(f38,plain,(
  ! [X2 : $int,X1 : $int,X0 : database] : (? [X7 : $int,X8 : $int,X9 : $int,X10 : $int] : ($less(X8,X7) & X1 = X8 & X2 = X7 & tab(X0,X2,X8,X10) & tab(X0,X1,X7,X9)) => ($less(sK11(X0,X1,X2),sK10(X0,X1,X2)) & sK11(X0,X1,X2) = X1 & sK10(X0,X1,X2) = X2 & tab(X0,X2,sK11(X0,X1,X2),sK13(X0,X1,X2)) & tab(X0,X1,sK10(X0,X1,X2),sK12(X0,X1,X2))))),
  introduced(choice_axiom,[])).
tff(f39,plain,(
  ! [X0 : database,X1 : $int,X2 : $int] : ((query1(X0,X1,X2) | ! [X3 : $int,X4 : $int,X5 : $int,X6 : $int] : (~$less(X4,X3) | X1 != X4 | X2 != X3 | ~tab(X0,X2,X4,X6) | ~tab(X0,X1,X3,X5))) & (($less(sK11(X0,X1,X2),sK10(X0,X1,X2)) & sK11(X0,X1,X2) = X1 & sK10(X0,X1,X2) = X2 & tab(X0,X2,sK11(X0,X1,X2),sK13(X0,X1,X2)) & tab(X0,X1,sK10(X0,X1,X2),sK12(X0,X1,X2))) | ~query1(X0,X1,X2)))),
  inference(skolemisation,[status(esa),new_symbols(skolem,[sK10,sK11,sK12,sK13])],[f37,f38])).
tff(f41,plain,(
  query2(sK0,sK1,sK2) | query1(sK0,sK1,sK2)),
  inference(cnf_transformation,[],[f29])).
tff(f42,plain,(
  ~query2(sK0,sK1,sK2) | ~query1(sK0,sK1,sK2)),
  inference(cnf_transformation,[],[f29])).
tff(f43,plain,(
  empty_record_condition(empty_record)),
  inference(cnf_transformation,[],[f1])).
tff(f44,plain,(
  empty_database_condition(empty_database)),
  inference(cnf_transformation,[],[f4])).
tff(f46,plain,(
  ( ! [X0:record] : (~valid_record(X0) | r(sK3(X0),r(sK4(X0),r(sK5(X0),empty_record))) = X0) )),
  inference(cnf_transformation,[],[f31])).
tff(f48,plain,(
  ( ! [X0:$int,X1:record] : (~empty_record_condition(r(X0,X1))) )),
  inference(cnf_transformation,[],[f2])).
tff(f49,plain,(
  ( ! [X0:record,X1:database] : (database_member(X0,db(X0,X1))) )),
  inference(cnf_transformation,[],[f8])).
tff(f50,plain,(
  ( ! [X0:record,X1:database] : (~database_member(X0,X1) | valid_record(X0)) )),
  inference(cnf_transformation,[],[f25])).
tff(f52,plain,(
  ( ! [X2:$int,X0:database,X1:$int] : (tab(X0,X1,sK6(X0,X1,X2),sK8(X0,X1,X2)) | ~query2(X0,X1,X2)) )),
  inference(cnf_transformation,[],[f35])).
tff(f53,plain,(
  ( ! [X2:$int,X0:database,X1:$int] : (tab(X0,X2,sK7(X0,X1,X2),sK9(X0,X1,X2)) | ~query2(X0,X1,X2)) )),
  inference(cnf_transformation,[],[f35])).
tff(f54,plain,(
  ( ! [X2:$int,X0:database,X1:$int] : (~query2(X0,X1,X2) | sK6(X0,X1,X2) = X2) )),
  inference(cnf_transformation,[],[f35])).
tff(f55,plain,(
  ( ! [X2:$int,X0:database,X1:$int] : (~query2(X0,X1,X2) | sK7(X0,X1,X2) = X1) )),
  inference(cnf_transformation,[],[f35])).
tff(f56,plain,(
  ( ! [X6:$int,X4:$int,X2:$int,X0:database,X5:$int,X3:$int,X1:$int] : (query2(X0,X1,X2) | X1 != X4 | X2 != X3 | ~tab(X0,X2,X4,X6) | ~tab(X0,X1,X3,X5)) )),
  inference(cnf_transformation,[],[f35])).
tff(f57,plain,(
  ( ! [X2:$int,X0:database,X1:$int] : (tab(X0,X1,sK10(X0,X1,X2),sK12(X0,X1,X2)) | ~query1(X0,X1,X2)) )),
  inference(cnf_transformation,[],[f39])).
tff(f58,plain,(
  ( ! [X2:$int,X0:database,X1:$int] : (tab(X0,X2,sK11(X0,X1,X2),sK13(X0,X1,X2)) | ~query1(X0,X1,X2)) )),
  inference(cnf_transformation,[],[f39])).
tff(f59,plain,(
  ( ! [X2:$int,X0:database,X1:$int] : (~query1(X0,X1,X2) | sK10(X0,X1,X2) = X2) )),
  inference(cnf_transformation,[],[f39])).
tff(f60,plain,(
  ( ! [X2:$int,X0:database,X1:$int] : (~query1(X0,X1,X2) | sK11(X0,X1,X2) = X1) )),
  inference(cnf_transformation,[],[f39])).
tff(f61,plain,(
  ( ! [X2:$int,X0:database,X1:$int] : (~query1(X0,X1,X2) | $less(sK11(X0,X1,X2),sK10(X0,X1,X2))) )),
  inference(cnf_transformation,[],[f39])).
tff(f65,plain,(
  ( ! [X6:$int,X4:$int,X2:$int,X0:database,X5:$int,X3:$int] : (query2(X0,X4,X2) | X2 != X3 | ~tab(X0,X2,X4,X6) | ~tab(X0,X4,X3,X5)) )),
  inference(equality_resolution,[],[f56])).
tff(f66,plain,(
  ( ! [X6:$int,X4:$int,X0:database,X5:$int,X3:$int] : (~tab(X0,X4,X3,X5) | ~tab(X0,X3,X4,X6) | query2(X0,X4,X3)) )),
  inference(equality_resolution,[],[f65])).
tff(f73,plain,(
  spl14_0 <=> empty_record_condition(empty_record)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_0])])).
tff(f74,plain,(
  empty_record_condition(empty_record) | ~spl14_0),
  inference(avatar_component_clause,[],[f73])).
tff(f75,plain,(
  spl14_0),
  inference(avatar_split_clause,[],[f43,f73])).
tff(f80,plain,(
  spl14_2 <=> empty_database_condition(empty_database)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_2])])).
tff(f82,plain,(
  spl14_2),
  inference(avatar_split_clause,[],[f44,f80])).
tff(f83,plain,(
  ( ! [X0:record] : (valid_record(X0)) )),
  inference(resolution,[],[f50,f49])).
tff(f85,plain,(
  spl14_5 <=> ~query1(sK0,sK1,sK2)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_5])])).
tff(f88,plain,(
  spl14_4 <=> query1(sK0,sK1,sK2)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_4])])).
tff(f89,plain,(
  query1(sK0,sK1,sK2) | ~spl14_4),
  inference(avatar_component_clause,[],[f88])).
tff(f91,plain,(
  spl14_7 <=> ~query2(sK0,sK1,sK2)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_7])])).
tff(f94,plain,(
  spl14_6 <=> query2(sK0,sK1,sK2)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_6])])).
tff(f95,plain,(
  query2(sK0,sK1,sK2) | ~spl14_6),
  inference(avatar_component_clause,[],[f94])).
tff(f96,plain,(
  spl14_4 | spl14_6),
  inference(avatar_split_clause,[],[f41,f94,f88])).
tff(f98,plain,(
  sK2 = sK10(sK0,sK1,sK2) | ~spl14_4),
  inference(resolution,[],[f59,f89])).
tff(f103,plain,(
  spl14_8 <=> sK2 = sK10(sK0,sK1,sK2)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_8])])).
tff(f104,plain,(
  sK2 = sK10(sK0,sK1,sK2) | ~spl14_8),
  inference(avatar_component_clause,[],[f103])).
tff(f105,plain,(
  spl14_8 | ~spl14_4),
  inference(avatar_split_clause,[],[f98,f88,f103])).
tff(f106,plain,(
  sK1 = sK11(sK0,sK1,sK2) | ~spl14_4),
  inference(resolution,[],[f60,f89])).
tff(f107,plain,(
  $less(sK11(sK0,sK1,sK2),sK10(sK0,sK1,sK2)) | ~spl14_4),
  inference(resolution,[],[f61,f89])).
tff(f108,plain,(
  $less(sK11(sK0,sK1,sK2),sK2) | (~spl14_4 | ~spl14_8)),
  inference(forward_demodulation,[],[f107,f104])).
tff(f113,plain,(
  spl14_10 <=> sK1 = sK11(sK0,sK1,sK2)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_10])])).
tff(f114,plain,(
  sK1 = sK11(sK0,sK1,sK2) | ~spl14_10),
  inference(avatar_component_clause,[],[f113])).
tff(f115,plain,(
  spl14_10 | ~spl14_4),
  inference(avatar_split_clause,[],[f106,f88,f113])).
tff(f116,plain,(
  ( ! [X0:record] : (r(sK3(X0),r(sK4(X0),r(sK5(X0),empty_record))) = X0) )),
  inference(resolution,[],[f46,f83])).
tff(f121,plain,(
  spl14_12 <=> $less(sK11(sK0,sK1,sK2),sK2)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_12])])).
tff(f122,plain,(
  $less(sK11(sK0,sK1,sK2),sK2) | ~spl14_12),
  inference(avatar_component_clause,[],[f121])).
tff(f123,plain,(
  spl14_12 | ~spl14_4 | ~spl14_8),
  inference(avatar_split_clause,[],[f108,f103,f88,f121])).
tff(f129,plain,(
  $less(sK1,sK2) | (~spl14_10 | ~spl14_12)),
  inference(forward_demodulation,[],[f122,f114])).
tff(f136,plain,(
  spl14_14 <=> $less(sK1,sK2)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_14])])).
tff(f138,plain,(
  spl14_14 | ~spl14_10 | ~spl14_12),
  inference(avatar_split_clause,[],[f129,f121,f113,f136])).
tff(f143,plain,(
  tab(sK0,sK1,sK2,sK12(sK0,sK1,sK2)) | ~query1(sK0,sK1,sK2) | ~spl14_8),
  inference(superposition,[],[f57,f104])).
tff(f146,plain,(
  tab(sK0,sK2,sK1,sK13(sK0,sK1,sK2)) | ~query1(sK0,sK1,sK2) | ~spl14_10),
  inference(superposition,[],[f58,f114])).
tff(f160,plain,(
  spl14_16 <=> tab(sK0,sK1,sK2,sK12(sK0,sK1,sK2))),
  introduced(avatar_definition,[new_symbols(naming,[spl14_16])])).
tff(f161,plain,(
  tab(sK0,sK1,sK2,sK12(sK0,sK1,sK2)) | ~spl14_16),
  inference(avatar_component_clause,[],[f160])).
tff(f162,plain,(
  ~spl14_5 | spl14_16 | ~spl14_8),
  inference(avatar_split_clause,[],[f143,f103,f160,f85])).
tff(f164,plain,(
  ( ! [X1:$int] : (~tab(sK0,sK2,sK1,X1) | query2(sK0,sK1,sK2)) ) | ~spl14_16),
  inference(resolution,[],[f161,f66])).
tff(f166,plain,(
  spl14_18 <=> ! [X1 : $int] : ~tab(sK0,sK2,sK1,X1)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_18])])).
tff(f168,plain,(
  spl14_6 | spl14_18 | ~spl14_16),
  inference(avatar_split_clause,[],[f164,f160,f166,f94])).
tff(f169,plain,(
  sK1 = sK7(sK0,sK1,sK2) | ~spl14_6),
  inference(resolution,[],[f95,f55])).
tff(f170,plain,(
  sK2 = sK6(sK0,sK1,sK2) | ~spl14_6),
  inference(resolution,[],[f95,f54])).
tff(f175,plain,(
  spl14_20 <=> sK1 = sK7(sK0,sK1,sK2)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_20])])).
tff(f176,plain,(
  sK1 = sK7(sK0,sK1,sK2) | ~spl14_20),
  inference(avatar_component_clause,[],[f175])).
tff(f177,plain,(
  spl14_20 | ~spl14_6),
  inference(avatar_split_clause,[],[f169,f94,f175])).
tff(f178,plain,(
  ~spl14_5 | ~spl14_7),
  inference(avatar_split_clause,[],[f42,f91,f85])).
tff(f183,plain,(
  spl14_22 <=> sK2 = sK6(sK0,sK1,sK2)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_22])])).
tff(f184,plain,(
  sK2 = sK6(sK0,sK1,sK2) | ~spl14_22),
  inference(avatar_component_clause,[],[f183])).
tff(f185,plain,(
  spl14_22 | ~spl14_6),
  inference(avatar_split_clause,[],[f170,f94,f183])).
tff(f195,plain,(
  tab(sK0,sK2,sK1,sK9(sK0,sK1,sK2)) | ~query2(sK0,sK1,sK2) | ~spl14_20),
  inference(superposition,[],[f53,f176])).
tff(f201,plain,(
  spl14_24 <=> tab(sK0,sK2,sK1,sK13(sK0,sK1,sK2))),
  introduced(avatar_definition,[new_symbols(naming,[spl14_24])])).
tff(f203,plain,(
  ~spl14_5 | spl14_24 | ~spl14_10),
  inference(avatar_split_clause,[],[f146,f113,f201,f85])).
tff(f208,plain,(
  spl14_22 | ~spl14_6),
  inference(avatar_split_clause,[],[f170,f94,f183])).
tff(f210,plain,(
  tab(sK0,sK1,sK2,sK8(sK0,sK1,sK2)) | ~query2(sK0,sK1,sK2) | ~spl14_22),
  inference(superposition,[],[f52,f184])).
tff(f216,plain,(
  spl14_26 <=> tab(sK0,sK2,sK1,sK9(sK0,sK1,sK2))),
  introduced(avatar_definition,[new_symbols(naming,[spl14_26])])).
tff(f217,plain,(
  tab(sK0,sK2,sK1,sK9(sK0,sK1,sK2)) | ~spl14_26),
  inference(avatar_component_clause,[],[f216])).
tff(f218,plain,(
  ~spl14_7 | spl14_26 | ~spl14_20),
  inference(avatar_split_clause,[],[f195,f175,f216,f91])).
tff(f223,plain,(
  ( ! [X1:$int] : (~tab(sK0,sK1,sK2,X1) | query2(sK0,sK2,sK1)) ) | ~spl14_26),
  inference(resolution,[],[f217,f66])).
tff(f231,plain,(
  spl14_28 <=> query2(sK0,sK2,sK1)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_28])])).
tff(f234,plain,(
  spl14_30 <=> ! [X1 : $int] : ~tab(sK0,sK1,sK2,X1)),
  introduced(avatar_definition,[new_symbols(naming,[spl14_30])])).
tff(f235,plain,(
  ( ! [X1:$int] : (~tab(sK0,sK1,sK2,X1)) ) | ~spl14_30),
  inference(avatar_component_clause,[],[f234])).
tff(f236,plain,(
  spl14_28 | spl14_30 | ~spl14_26),
  inference(avatar_split_clause,[],[f223,f216,f234,f231])).
tff(f238,plain,(
  $false | (~spl14_16 | ~spl14_30)),
  inference(resolution,[],[f235,f161])).
tff(f239,plain,(
  ~spl14_16 | ~spl14_30),
  inference(avatar_contradiction_clause,[],[f238])).
tff(f244,plain,(
  spl14_32 <=> tab(sK0,sK1,sK2,sK8(sK0,sK1,sK2))),
  introduced(avatar_definition,[new_symbols(naming,[spl14_32])])).
tff(f245,plain,(
  tab(sK0,sK1,sK2,sK8(sK0,sK1,sK2)) | ~spl14_32),
  inference(avatar_component_clause,[],[f244])).
tff(f246,plain,(
  ~spl14_7 | spl14_32 | ~spl14_22),
  inference(avatar_split_clause,[],[f210,f183,f244,f91])).
tff(f247,plain,(
  $false | (~spl14_30 | ~spl14_32)),
  inference(resolution,[],[f245,f235])).
tff(f250,plain,(
  ~spl14_30 | ~spl14_32),
  inference(avatar_contradiction_clause,[],[f247])).
tff(f257,plain,(
  ( ! [X9:record] : (~empty_record_condition(X9)) )),
  inference(superposition,[],[f48,f116])).
tff(f258,plain,(
  $false | ~spl14_0),
  inference(resolution,[],[f257,f74])).
tff(f259,plain,(
  ~spl14_0),
  inference(avatar_contradiction_clause,[],[f258])).
tff(f260,plain,(
  $false),
  inference(avatar_sat_refutation,[],[f75,f82,f96,f105,f115,f123,f138,f162,f168,f177,f178,f185,f203,f208,f218,f236,f239,f246,f250,f259])).
% SZS output end Proof for equiv12
% ------------------------------
% Version: Vampire 4.2.2 (commit e1949dd on 2017-12-14 18:39:21 +0000)
% Termination reason: Refutation

% Memory used [KB]: 767
% Time elapsed: 0.087 s
% ------------------------------
% ------------------------------
% Success in time 0.096 s
% Starting sequential portfolio solving with schedule "casc_sat"
% spawned child 7703 with time: 3 (total remaining time 3000)
% fmb+10_1_av=off:bce=on:fmbsr=1.8:nm=4_1 on equiv34
% Terminated due to inappropriate strategy.
% ------------------------------
% Version: Vampire 4.2.2 (commit e1949dd on 2017-12-14 18:39:21 +0000)
% Termination reason: Inappropriate

% Memory used [KB]: 511
% Time elapsed: 0.001 s
% ------------------------------
% ------------------------------
% spawned child 7704 with time: 33 (total remaining time 3000)
% ott+11_3_aac=none:afr=on:afp=4000:afq=1.4:amm=off:anc=all:bs=unit_only:bsr=on:bce=on:fde=unused:irw=on:nm=64:newcnf=on:nwc=1:nicw=on:sac=on:sp=reverse_arity:uhcvi=on_31 on equiv34
% Refutation found. Thanks to Tanya!
% SZS status Theorem for equiv34
% SZS output start Proof for equiv34
tff(type_def_5, type, record: $tType).
tff(type_def_6, type, database: $tType).
tff(func_def_0, type, r: ($int * record) > record).
tff(func_def_1, type, empty_record: record).
tff(func_def_2, type, db: (record * database) > database).
tff(func_def_3, type, empty_database: database).
tff(func_def_9, type, sK0: database).
tff(func_def_10, type, sK1: $int).
tff(func_def_11, type, sK2: $int).
tff(func_def_12, type, sK3: record > $int).
tff(func_def_13, type, sK4: record > $int).
tff(func_def_14, type, sK5: record > $int).
tff(func_def_15, type, sK6: database > database).
tff(func_def_16, type, sK7: database > $int).
tff(func_def_17, type, sK8: database > $int).
tff(func_def_18, type, sK9: database > $int).
tff(func_def_19, type, sK10: database > $int).
tff(func_def_20, type, sK11: (database * $int) > $int).
tff(func_def_21, type, sK12: (database * $int) > $int).
tff(func_def_22, type, sK13: (database * $int * $int) > database).
tff(func_def_23, type, sK14: (database * $int) > $int).
tff(func_def_24, type, sK15: (database * $int) > $int).
tff(func_def_25, type, sK16: (database * $int * $int) > database).
tff(func_def_26, type, sK17: (database * $int * database) > $int).
tff(func_def_27, type, sK18: (database * $int * database) > $int).
tff(pred_def_1, type, empty_record_condition: record > $o).
tff(pred_def_2, type, valid_record: record > $o).
tff(pred_def_3, type, empty_database_condition: database > $o).
tff(pred_def_4, type, database_member: (record * database) > $o).
tff(pred_def_5, type, tab: (database * $int * $int * $int) > $o).
tff(pred_def_6, type, query3: (database * $int * $int) > $o).
tff(pred_def_7, type, query4: (database * $int * $int) > $o).
tff(pred_def_8, type, select_by_first: (database * $int * database) > $o).
tff(pred_def_9, type, filtered3: (database * database) > $o).
tff(pred_def_10, type, sum_third: (database * $int) > $o).
tff(f1,axiom,(
  empty_record_condition(empty_record)),
  file('./tptp/equiv34.tptp',empty_record)).
tff(f2,axiom,(
  ! [X0 : $int,X1 : record] : ~empty_record_condition(r(X0,X1))),
  file('./tptp/equiv34.tptp',nonempty_record)).
tff(f3,axiom,(
  ! [X2 : record] : (valid_record(X2) <=> ? [X0 : $int,X3 : $int,X4 : $int] : r(X0,r(X3,r(X4,empty_record))) = X2)),
  file('./tptp/equiv34.tptp',valid_record)).
tff(f7,axiom,(
  ! [X0 : record,X1 : database] : (~valid_record(X0) => ~database_member(X0,X1))),
  file('./tptp/equiv34.tptp',database_with_only_valid_records)).
tff(f8,axiom,(
  ! [X0 : record,X1 : database] : database_member(X0,db(X0,X1))),
  file('./tptp/equiv34.tptp',database_member)).
tff(f32,plain,(
  ! [X0 : record] : (valid_record(X0) <=> ? [X1 : $int,X2 : $int,X3 : $int] : r(X1,r(X2,r(X3,empty_record))) = X0)),
  inference(rectify,[],[f3])).
tff(f40,plain,(
  ! [X0 : record] : (valid_record(X0) => ? [X1 : $int,X2 : $int,X3 : $int] : r(X1,r(X2,r(X3,empty_record))) = X0)),
  inference(unused_predicate_definition_removal,[],[f32])).
tff(f42,plain,(
  ! [X0 : record] : (? [X1 : $int,X2 : $int,X3 : $int] : r(X1,r(X2,r(X3,empty_record))) = X0 | ~valid_record(X0))),
  inference(ennf_transformation,[],[f40])).
tff(f43,plain,(
  ! [X0 : record,X1 : database] : (~database_member(X0,X1) | valid_record(X0))),
  inference(ennf_transformation,[],[f7])).
tff(f49,plain,(
  empty_record_condition(empty_record)),
  inference(cnf_transformation,[],[f1])).
tff(f53,plain,(
  ( ! [X0:record] : (~valid_record(X0) | r(sK3(X0),r(sK4(X0),r(sK5(X0),empty_record))) = X0) )),
  inference(cnf_transformation,[],[f42])).
tff(f54,plain,(
  ( ! [X0:$int,X1:record] : (~empty_record_condition(r(X0,X1))) )),
  inference(cnf_transformation,[],[f2])).
tff(f56,plain,(
  ( ! [X0:record,X1:database] : (database_member(X0,db(X0,X1))) )),
  inference(cnf_transformation,[],[f8])).
tff(f57,plain,(
  ( ! [X0:record,X1:database] : (valid_record(X0) | ~database_member(X0,X1)) )),
  inference(cnf_transformation,[],[f43])).
tff(f75,plain,(
  spl19_0 <=> empty_record_condition(empty_record)),
  introduced(avatar_definition,[new_symbols(naming,[spl19_0])])).
tff(f76,plain,(
  empty_record_condition(empty_record) | ~spl19_0),
  inference(avatar_component_clause,[],[f75])).
tff(f77,plain,(
  spl19_0),
  inference(avatar_split_clause,[],[f49,f75])).
tff(f95,plain,(
  spl19_10 <=> ! [X1 : record,X0 : $int] : ~empty_record_condition(r(X0,X1))),
  introduced(avatar_definition,[new_symbols(naming,[spl19_10])])).
tff(f96,plain,(
  ( ! [X0:$int,X1:record] : (~empty_record_condition(r(X0,X1))) ) | ~spl19_10),
  inference(avatar_component_clause,[],[f95])).
tff(f97,plain,(
  spl19_10),
  inference(avatar_split_clause,[],[f54,f95])).
tff(f112,plain,(
  spl19_18 <=> ! [X1 : database,X0 : record] : database_member(X0,db(X0,X1))),
  introduced(avatar_definition,[new_symbols(naming,[spl19_18])])).
tff(f113,plain,(
  ( ! [X0:record,X1:database] : (database_member(X0,db(X0,X1))) ) | ~spl19_18),
  inference(avatar_component_clause,[],[f112])).
tff(f114,plain,(
  spl19_18),
  inference(avatar_split_clause,[],[f56,f112])).
tff(f116,plain,(
  spl19_20 <=> ! [X1 : database,X0 : record] : (valid_record(X0) | ~database_member(X0,X1))),
  introduced(avatar_definition,[new_symbols(naming,[spl19_20])])).
tff(f117,plain,(
  ( ! [X0:record,X1:database] : (~database_member(X0,X1) | valid_record(X0)) ) | ~spl19_20),
  inference(avatar_component_clause,[],[f116])).
tff(f118,plain,(
  spl19_20),
  inference(avatar_split_clause,[],[f57,f116])).
tff(f123,plain,(
  ( ! [X0:record] : (valid_record(X0)) ) | (~spl19_18 | ~spl19_20)),
  inference(resolution,[],[f117,f113])).
tff(f124,plain,(
  ( ! [X0:record] : (r(sK3(X0),r(sK4(X0),r(sK5(X0),empty_record))) = X0) ) | (~spl19_18 | ~spl19_20)),
  inference(subsumption_resolution,[],[f53,f123])).
tff(f651,plain,(
  spl19_128 <=> ! [X0 : record] : r(sK3(X0),r(sK4(X0),r(sK5(X0),empty_record))) = X0),
  introduced(avatar_definition,[new_symbols(naming,[spl19_128])])).
tff(f652,plain,(
  ( ! [X0:record] : (r(sK3(X0),r(sK4(X0),r(sK5(X0),empty_record))) = X0) ) | ~spl19_128),
  inference(avatar_component_clause,[],[f651])).
tff(f653,plain,(
  spl19_128 | ~spl19_18 | ~spl19_20),
  inference(avatar_split_clause,[],[f124,f116,f112,f651])).
tff(f674,plain,(
  ( ! [X0:record] : (~empty_record_condition(X0)) ) | (~spl19_10 | ~spl19_128)),
  inference(superposition,[],[f96,f652])).
tff(f675,plain,(
  $false | (~spl19_0 | ~spl19_10 | ~spl19_128)),
  inference(subsumption_resolution,[],[f76,f674])).
tff(f676,plain,(
  ~spl19_0 | ~spl19_10 | ~spl19_128),
  inference(avatar_contradiction_clause,[],[f675])).
tff(f677,plain,(
  $false),
  inference(avatar_sat_refutation,[],[f77,f97,f114,f118,f653,f676])).
% SZS output end Proof for equiv34
% ------------------------------
% Version: Vampire 4.2.2 (commit e1949dd on 2017-12-14 18:39:21 +0000)
% Termination reason: Refutation

% Memory used [KB]: 5500
% Time elapsed: 0.009 s
% ------------------------------
% ------------------------------
% Success in time 0.125 s
```
