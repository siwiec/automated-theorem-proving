# Initializing proof state
# Scanning for AC axioms
#
#cnf(i_0_4, plain, (esk2_1(X1)=X1|~main_query_0(X1))).
#
#cnf(i_0_14, plain, (esk7_1(X1)=X1|~main_query_1(X1))).
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
#cnf(i_0_18, plain, (tab(X1,X1,esk3_1(X1))|~main_query_0(X1))).
#
#cnf(i_0_13, plain, (tab(X1,esk7_1(X1),esk8_1(X1))|~main_query_1(X1))).
#
#cnf(i_0_21, plain, (tab(X1,X1,esk8_1(X1))|~main_query_1(X1))).
#
#cnf(i_0_22, plain, (main_query_0(X1)|~main_query_1(X1))).
#
#cnf(i_0_23, negated_conjecture, (main_query_0(esk1_0))).
##
#cnf(i_0_11, plain, (k|main_query_1(X1)|X1!=X2|~tab(X1,X2,X3))).
#
#cnf(i_0_2, negated_conjecture, (~main_query_1(esk1_0))).
#
#cnf(i_0_26, plain, (k|main_query_1(X1)|~main_query_0(X1))).
#
#cnf(i_0_28, negated_conjecture, (k)).
#
#cnf(i_0_9, plain, (tab(X1,X2,X3)|~b(X1,X2,X3))).
#
#cnf(i_0_8, plain, (b(X1,X2,X3)|~tab(X1,X2,X3))).
#
#cnf(i_0_10, plain, (main_query_1(X4)|X4!=X5|~b(X1,X2,X3)|~tab(X4,X5,X6))).
#
#cnf(i_0_33, plain, (main_query_1(X1)|~b(X2,X3,X4)|~main_query_0(X1))).
#
#cnf(i_0_37, plain, (main_query_1(X1)|~tab(X2,X3,X4)|~main_query_0(X1))).
#
#cnf(i_0_39, plain, (main_query_1(X1)|~main_query_1(X2)|~main_query_0(X1))).
#
#cnf(i_0_40, plain, (main_query_1(X1)|~main_query_0(X1)|~main_query_0(X2))).
###
#cnf(i_0_43, negated_conjecture, (~main_query_1(X1))).
##
#cnf(i_0_50, plain, (~main_query_0(X1)|~main_query_0(X2)|~main_query_0(X3))).
#
#cnf(i_0_46, plain, (~tab(X3,X4,X5)|~main_query_0(X1)|~main_query_0(X2))).
#
#cnf(i_0_48, negated_conjecture, (~main_query_0(X1))).

# Proof found!
# SZS status Theorem
# Parsed axioms                        : 4
# Removed by relevancy pruning/SinE    : 0
# Initial clauses                      : 14
# Removed in clause preprocessing      : 0
# Initial clauses in saturation        : 14
# Processed clauses                    : 32
# ...of these trivial                  : 0
# ...subsumed                          : 4
# ...remaining for further processing  : 28
# Other redundant clauses eliminated   : 0
# Clauses deleted for lack of memory   : 0
# Backward-subsumed                    : 0
# Backward-rewritten                   : 6
# Generated clauses                    : 48
# ...of the previous two non-trivial   : 36
# Contextual simplify-reflections      : 0
# Paramodulations                      : 47
# Factorizations                       : 0
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
# Current number of processed clauses  : 21
#    Positive orientable unit clauses  : 1
#    Positive unorientable unit clauses: 0
#    Negative unit clauses             : 3
#    Non-unit-clauses                  : 17
# Current number of unprocessed clauses: 17
# ...number of literals in the above   : 47
# Current number of archived formulas  : 0
# Current number of archived clauses   : 7
# Clause-clause subsumption calls (NU) : 55
# Rec. Clause-clause subsumption calls : 46
# Non-unit clause-clause subsumptions  : 3
# Unit Clause-clause subsumption calls : 19
# Rewrite failures with RHS unbound    : 0
# BW rewrite match attempts            : 2
# BW rewrite match successes           : 2
# Condensation attempts                : 0
# Condensation successes               : 0
# Termbank termtop insertions          : 1184
