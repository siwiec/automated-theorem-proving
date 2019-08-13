# Initializing proof state
# Scanning for AC axioms
#
#cnf(i_0_19, plain, (lessthanorequal(X1,X1))).
#
#cnf(i_0_3, plain, (esk2_1(X1)=X1|~main_query_0(X1))).
#
#cnf(i_0_2, plain, (esk4_1(X1)=X1|~main_query_0(X1))).
#
#cnf(i_0_10, negated_conjecture, (~main_query_1(esk8_0)|~main_query_0(esk8_0))).
#
#cnf(i_0_7, plain, (esk6_1(X1)=X1|~main_query_1(X1))).
#
#cnf(i_0_9, negated_conjecture, (main_query_1(esk8_0)|main_query_0(esk8_0))).
#
#cnf(i_0_6, plain, (main_query_1(X1)|X1!=X2|~tab(X1,X2,X3))).
#
#cnf(i_0_20, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X2))).
#
#cnf(i_0_21, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X2,X3)|~lessthanorequal(X1,X2))).
#
#cnf(i_0_4, plain, (tab(X1,esk4_1(X1),esk5_1(X1))|~main_query_0(X1))).
#
#cnf(i_0_30, plain, (tab(X1,X1,esk5_1(X1))|~main_query_0(X1))).
#
#cnf(i_0_31, plain, (main_query_1(X1)|~main_query_0(X1))).
##
#cnf(i_0_8, plain, (tab(X1,esk6_1(X1),esk7_1(X1))|~main_query_1(X1))).
#
#cnf(i_0_34, plain, (tab(X1,X1,esk7_1(X1))|~main_query_1(X1))).
#
#cnf(i_0_32, negated_conjecture, (~main_query_0(esk8_0))).
#
#cnf(i_0_9, negated_conjecture, (main_query_1(esk8_0))).
#
#cnf(i_0_5, plain, (tab(esk1_1(X1),esk2_1(X1),esk3_1(X1))|~main_query_0(X1))).
#
#cnf(i_0_37, plain, (tab(esk1_1(X1),X1,esk3_1(X1))|~main_query_0(X1))).
##
#cnf(i_0_38, plain, (main_query_1(esk1_1(X1))|esk1_1(X1)!=X1|~main_query_0(X1))).
#
#cnf(i_0_36, plain, (main_query_1(esk1_1(X1))|esk1_1(X1)!=esk2_1(X1)|~main_query_0(X1))).
#
#cnf(i_0_25, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3))).
####
#cnf(i_0_23, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4))).
#####
#cnf(i_0_40, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4))).
#######
#cnf(i_0_1, plain, (main_query_0(X4)|X4!=X5|X2!=X4|~tab(X4,X5,X6)|~tab(X1,X2,X3))).
#
#cnf(i_0_83, plain, (main_query_0(X1)|X2!=X1|~main_query_1(X1)|~tab(X3,X2,X4))).
#
#cnf(i_0_84, plain, (main_query_0(X1)|~main_query_1(X1)|~tab(X2,X1,X3))).
#
#cnf(i_0_99, plain, (main_query_0(X1)|~main_query_1(X1))).

# Proof found!
# SZS status Theorem
# Parsed axioms                        : 14
# Removed by relevancy pruning/SinE    : 0
# Initial clauses                      : 21
# Removed in clause preprocessing      : 8
# Initial clauses in saturation        : 13
# Processed clauses                    : 42
# ...of these trivial                  : 0
# ...subsumed                          : 15
# ...remaining for further processing  : 27
# Other redundant clauses eliminated   : 0
# Clauses deleted for lack of memory   : 0
# Backward-subsumed                    : 2
# Backward-rewritten                   : 1
# Generated clauses                    : 83
# ...of the previous two non-trivial   : 70
# Contextual simplify-reflections      : 0
# Paramodulations                      : 80
# Factorizations                       : 0
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
# Current number of processed clauses  : 23
#    Positive orientable unit clauses  : 2
#    Positive unorientable unit clauses: 0
#    Negative unit clauses             : 1
#    Non-unit-clauses                  : 20
# Current number of unprocessed clauses: 41
# ...number of literals in the above   : 210
# Current number of archived formulas  : 0
# Current number of archived clauses   : 4
# Clause-clause subsumption calls (NU) : 52
# Rec. Clause-clause subsumption calls : 47
# Non-unit clause-clause subsumptions  : 16
# Unit Clause-clause subsumption calls : 1
# Rewrite failures with RHS unbound    : 0
# BW rewrite match attempts            : 1
# BW rewrite match successes           : 1
# Condensation attempts                : 0
# Condensation successes               : 0
# Termbank termtop insertions          : 1655
