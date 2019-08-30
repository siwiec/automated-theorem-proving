# Initializing proof state
# Scanning for AC axioms
#
#cnf(i_0_11, plain, (k|main_query_1(X1))).
#
#cnf(i_0_4, plain, (esk2_1(X1)=X1|~main_query_0(X1))).
#
#cnf(i_0_1, negated_conjecture, (main_query_1(esk1_0)|main_query_0(esk1_0))).
#
#cnf(i_0_2, negated_conjecture, (~main_query_1(esk1_0)|~main_query_0(esk1_0))).
#
#cnf(i_0_12, plain, (tab(X1,X2,X3)|main_query_1(X1))).
#
#cnf(i_0_3, plain, (main_query_0(X1)|X1!=X2|~tab(X1,X2,X3))).
#
#cnf(i_0_16, plain, (main_query_1(X1)|main_query_0(X1)|X1!=X2)).
#
#cnf(i_0_17, plain, (main_query_1(X1)|main_query_0(X1))).
#
#cnf(i_0_10, plain, (main_query_1(X4)|X4!=X5|~b(X1,X2,X3))).
#
#cnf(i_0_20, plain, (main_query_1(X1)|~b(X2,X3,X4))).
#
#cnf(i_0_9, plain, (tab(X1,X2,X3)|~b(X1,X2,X3)|~k)).
#
#cnf(i_0_8, plain, (b(X1,X2,X3)|~k|~tab(X1,X2,X3))).
#
#cnf(i_0_21, plain, (main_query_1(X1)|~k|~tab(X2,X3,X4))).
#
#cnf(i_0_23, plain, (main_query_1(X1)|main_query_1(X2)|~k)).
#
#cnf(i_0_24, plain, (main_query_1(X3)|~k)).
#
#cnf(i_0_5, plain, (tab(X1,esk2_1(X1),esk3_1(X1))|~main_query_0(X1))).
#
#cnf(i_0_27, plain, (tab(X1,X1,esk3_1(X1))|~main_query_0(X1))).
#
#cnf(i_0_7, plain, (k|~b(esk4_0,esk5_0,esk6_0)|~tab(esk4_0,esk5_0,esk6_0))).
#
#cnf(i_0_13, plain, (esk12_1(X1)=X1|~k|~tab(X1,esk7_1(X1),esk8_1(X1))|~main_query_1(X1))).
#
#cnf(i_0_6, plain, (b(esk4_0,esk5_0,esk6_0)|k|tab(esk4_0,esk5_0,esk6_0))).
##
#cnf(i_0_14, plain, (b(esk9_1(X1),esk10_1(X1),esk11_1(X1))|~k|~tab(X1,esk7_1(X1),esk8_1(X1))|~main_query_1(X1))).
##
#cnf(i_0_35, plain, (tab(esk9_1(X1),esk10_1(X1),esk11_1(X1))|~k|~tab(X1,esk7_1(X1),esk8_1(X1))|~main_query_1(X1))).
#
#cnf(i_0_36, plain, (main_query_0(esk9_1(X1))|esk10_1(X1)!=esk9_1(X1)|~k|~tab(X1,esk7_1(X1),esk8_1(X1))|~main_query_1(X1))).

# No proof found!
# SZS status CounterSatisfiable
# Parsed axioms                        : 4
# Removed by relevancy pruning/SinE    : 0
# Initial clauses                      : 14
# Removed in clause preprocessing      : 0
# Initial clauses in saturation        : 14
# Processed clauses                    : 25
# ...of these trivial                  : 0
# ...subsumed                          : 2
# ...remaining for further processing  : 23
# Other redundant clauses eliminated   : 0
# Clauses deleted for lack of memory   : 0
# Backward-subsumed                    : 5
# Backward-rewritten                   : 0
# Generated clauses                    : 23
# ...of the previous two non-trivial   : 12
# Contextual simplify-reflections      : 0
# Paramodulations                      : 19
# Factorizations                       : 2
# Equation resolutions                 : 2
# Propositional unsat checks           : 0
#    Propositional check models        : 0
#    Propositional check unsatisfiable : 0
#    Propositional clauses             : 0
#    Propositional clauses after purity: 0
#    Propositional unsat core size     : 0
#    Propositional preprocessing time  : 0.000
#    Propositional encoding time       : 0.000
#    Propositional solver time         : 0.000
#    Success case prop preproc time    : 0.000
#    Success case prop encoding time   : 0.000
#    Success case prop solver time     : 0.000
# Current number of processed clauses  : 18
#    Positive orientable unit clauses  : 0
#    Positive unorientable unit clauses: 0
#    Negative unit clauses             : 0
#    Non-unit-clauses                  : 18
# Current number of unprocessed clauses: 0
# ...number of literals in the above   : 0
# Current number of archived formulas  : 0
# Current number of archived clauses   : 5
# Clause-clause subsumption calls (NU) : 53
# Rec. Clause-clause subsumption calls : 31
# Non-unit clause-clause subsumptions  : 7
# Unit Clause-clause subsumption calls : 0
# Rewrite failures with RHS unbound    : 0
# BW rewrite match attempts            : 0
# BW rewrite match successes           : 0
# Condensation attempts                : 0
# Condensation successes               : 0
# Termbank termtop insertions          : 1135
