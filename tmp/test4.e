# Initializing proof state
# Scanning for AC axioms
#
#cnf(i_0_4, plain, (esk2_1(X1)=X1|~main_query_0(X1))).
#
#cnf(i_0_16, plain, (esk7_1(X1)=X1|~main_query_1(X1))).
#
#cnf(i_0_1, negated_conjecture, (main_query_1(esk1_0)|main_query_0(esk1_0))).
#
#cnf(i_0_2, negated_conjecture, (~main_query_1(esk1_0)|~main_query_0(esk1_0))).
#
#cnf(i_0_3, plain, (main_query_0(X1)|X1!=X2|~tab(X1,X2,X3))).
#
#cnf(i_0_9, plain, (tab(X1,X2,X3)|~b(X1,X2,X3)|~k)).
#
#cnf(i_0_8, plain, (b(X1,X2,X3)|~k|~tab(X1,X2,X3))).
#
#cnf(i_0_5, plain, (tab(X1,esk2_1(X1),esk3_1(X1))|~main_query_0(X1))).
#
#cnf(i_0_20, plain, (tab(X1,X1,esk3_1(X1))|~main_query_0(X1))).
#
#cnf(i_0_15, plain, (tab(X1,esk7_1(X1),esk8_1(X1))|~main_query_1(X1))).
#
#cnf(i_0_23, plain, (tab(X1,X1,esk8_1(X1))|~main_query_1(X1))).
#
#cnf(i_0_24, plain, (main_query_0(X1)|~main_query_1(X1))).
#
#cnf(i_0_25, negated_conjecture, (main_query_0(esk1_0))).
##
#cnf(i_0_10, plain, (main_query_1(X4)|X4!=X5|~b(X1,X2,X3)|~tab(X4,X5,X6))).
#
#cnf(i_0_2, negated_conjecture, (~main_query_1(esk1_0))).
#
#cnf(i_0_29, plain, (main_query_1(X1)|~b(X2,X3,X4)|~main_query_0(X1))).
#
#cnf(i_0_32, plain, (main_query_1(X1)|~k|~tab(X2,X3,X4)|~main_query_0(X1))).
#
#cnf(i_0_34, plain, (main_query_1(X1)|~k|~main_query_1(X2)|~main_query_0(X1))).
#
#cnf(i_0_38, negated_conjecture, (~k|~main_query_1(X1))).
#
#cnf(i_0_35, plain, (main_query_1(X1)|~k|~main_query_0(X1)|~main_query_0(X2))).
###
#cnf(i_0_45, negated_conjecture, (~k|~main_query_0(X1))).
##
#cnf(i_0_7, plain, (k|~b(esk4_0,esk5_0,esk6_0)|~tab(esk4_0,esk5_0,esk6_0))).
#
#cnf(i_0_30, plain, (main_query_1(X1)|X1!=X2|~k|~tab(X1,X2,X6)|~tab(X3,X4,X5))).
#
#cnf(i_0_48, negated_conjecture, (~k)).
########
#cnf(i_0_6, plain, (b(esk4_0,esk5_0,esk6_0)|tab(esk4_0,esk5_0,esk6_0))).
##
#cnf(i_0_60, plain, (tab(esk4_0,esk5_0,esk6_0)|main_query_1(X1)|~main_query_0(X1))).
##
#cnf(i_0_64, plain, (main_query_1(X1)|main_query_0(esk4_0)|esk5_0!=esk4_0|~main_query_0(X1))).
#
#cnf(i_0_67, negated_conjecture, (main_query_0(esk4_0)|esk5_0!=esk4_0)).
##
#cnf(i_0_59, plain, (tab(esk4_0,esk5_0,esk6_0)|main_query_1(X1)|X1!=X2|~tab(X1,X2,X3))).
######
#cnf(i_0_11, plain, (b(X1,X2,X3)|main_query_1(X4)|X4!=X5|~tab(X4,X5,X6)|~tab(X1,X2,X3))).
#
#cnf(i_0_87, plain, (b(X1,X2,X3)|main_query_1(X4)|~tab(X1,X2,X3)|~main_query_0(X4))).
#
#cnf(i_0_90, plain, (main_query_1(X1)|~tab(esk4_0,esk5_0,esk6_0)|~main_query_0(X1))).
##
#cnf(i_0_97, plain, (main_query_1(X1)|main_query_1(X2)|~main_query_0(X1)|~main_query_0(X2))).
#
#cnf(i_0_98, plain, (main_query_1(X3)|~main_query_0(X3))).

# Proof found!
# SZS status Theorem
# Parsed axioms                        : 4
# Removed by relevancy pruning/SinE    : 0
# Initial clauses                      : 16
# Removed in clause preprocessing      : 0
# Initial clauses in saturation        : 16
# Processed clauses                    : 54
# ...of these trivial                  : 0
# ...subsumed                          : 20
# ...remaining for further processing  : 34
# Other redundant clauses eliminated   : 0
# Clauses deleted for lack of memory   : 0
# Backward-subsumed                    : 9
# Backward-rewritten                   : 2
# Generated clauses                    : 92
# ...of the previous two non-trivial   : 64
# Contextual simplify-reflections      : 0
# Paramodulations                      : 90
# Factorizations                       : 2
# Equation resolutions                 : 0
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
# Current number of processed clauses  : 23
#    Positive orientable unit clauses  : 1
#    Positive unorientable unit clauses: 0
#    Negative unit clauses             : 2
#    Non-unit-clauses                  : 20
# Current number of unprocessed clauses: 20
# ...number of literals in the above   : 95
# Current number of archived formulas  : 0
# Current number of archived clauses   : 11
# Clause-clause subsumption calls (NU) : 246
# Rec. Clause-clause subsumption calls : 129
# Non-unit clause-clause subsumptions  : 17
# Unit Clause-clause subsumption calls : 17
# Rewrite failures with RHS unbound    : 0
# BW rewrite match attempts            : 1
# BW rewrite match successes           : 1
# Condensation attempts                : 0
# Condensation successes               : 0
# Termbank termtop insertions          : 1727
