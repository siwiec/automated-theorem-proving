# Initializing proof state
# Scanning for AC axioms
#
#cnf(i_0_9, plain, (esk3_2(X2,X1)=X1|~main_query_0(X2,X1))).
#
#cnf(i_0_10, plain, (esk5_2(X1,X2)=X1|~main_query_0(X1,X2))).
#
#cnf(i_0_21, plain, (esk13_2(X2,X1)=X1|~main_query_1(X2,X1))).
#
#cnf(i_0_2, negated_conjecture, (~main_query_1(esk1_0,esk2_0)|~main_query_0(esk1_0,esk2_0))).
#
#cnf(i_0_22, plain, (esk15_2(X1,X2)=X1|~main_query_1(X1,X2))).
#
#cnf(i_0_1, negated_conjecture, (main_query_1(esk1_0,esk2_0)|main_query_0(esk1_0,esk2_0))).
#
#cnf(i_0_15, plain, (a(X1,X2,X3)|~tab(X1,X2,X3)|~main_query_0(X4,X5))).
#
#cnf(i_0_27, plain, (a(X1,X2,X3)|~tab(X1,X2,X3)|~main_query_1(X4,X5))).
#
#cnf(i_0_12, plain, (b(X1,X2,X3)|~tab(X1,X2,X3)|~main_query_0(X4,X5))).
#
#cnf(i_0_24, plain, (b(X1,X2,X3)|~tab(X1,X2,X3)|~main_query_1(X4,X5))).
#
#cnf(i_0_16, plain, (tab(X1,X2,X3)|~a(X1,X2,X3)|~main_query_0(X4,X5))).
#
#cnf(i_0_13, plain, (tab(X1,X2,X3)|~b(X1,X2,X3)|~main_query_0(X4,X5))).
#
#cnf(i_0_28, plain, (tab(X1,X2,X3)|~a(X1,X2,X3)|~main_query_1(X4,X5))).
#
#cnf(i_0_25, plain, (tab(X1,X2,X3)|~b(X1,X2,X3)|~main_query_1(X4,X5))).
#
#cnf(i_0_8, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_46, plain, (lessthanorequal(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_48, plain, (lessthanorequal(X2,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_47, plain, (lessthanorequal(X2,esk5_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_7, plain, (lessthanorequal(esk5_2(X1,X2),esk5_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_50, plain, (lessthanorequal(esk5_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_52, plain, (lessthanorequal(X1,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_51, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_14, plain, (a(X1,esk3_2(X1,X2),esk4_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_54, plain, (a(X1,X2,esk4_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_26, plain, (a(X1,esk13_2(X1,X2),esk14_2(X1,X2))|~main_query_1(X1,X2))).
#
#cnf(i_0_55, plain, (a(X1,X2,esk14_2(X1,X2))|~main_query_1(X1,X2))).
#
#cnf(i_0_11, plain, (b(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_56, plain, (b(X1,X2,esk6_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_23, plain, (b(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X2,X1))).
#
#cnf(i_0_57, plain, (b(X1,X2,esk16_2(X2,X1))|~main_query_1(X2,X1))).
#
#cnf(i_0_34, plain, (a(X1,X2,X3)|~b(X1,X2,X3)|~main_query_0(X4,X5)|~main_query_0(X6,X7))).
#
#cnf(i_0_35, plain, (a(X1,X2,X3)|~b(X1,X2,X3)|~main_query_1(X4,X5)|~main_query_0(X6,X7))).
##
#cnf(i_0_32, plain, (b(X1,X2,X3)|~a(X1,X2,X3)|~main_query_0(X4,X5)|~main_query_0(X6,X7))).
#
#cnf(i_0_43, plain, (a(X1,X2,X3)|~b(X1,X2,X3)|~main_query_1(X4,X5)|~main_query_1(X6,X7))).
#
#cnf(i_0_33, plain, (b(X1,X2,X3)|~a(X1,X2,X3)|~main_query_1(X4,X5)|~main_query_0(X6,X7))).
##
#cnf(i_0_41, plain, (b(X1,X2,X3)|~a(X1,X2,X3)|~main_query_1(X4,X5)|~main_query_1(X6,X7))).
#
#cnf(i_0_60, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_0(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
#
#cnf(i_0_61, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X2,X1)|~main_query_0(X3,X4)|~main_query_0(X5,X6))).
#
#cnf(i_0_64, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
#
#cnf(i_0_65, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X2,X1)|~main_query_0(X5,X6))).
#
#cnf(i_0_70, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_0(X2,X1))).
#
#cnf(i_0_71, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_1(X2,X1))).
#
#cnf(i_0_58, plain, (a(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X2,X1)|~main_query_0(X3,X4)|~main_query_0(X5,X6))).
##
#cnf(i_0_59, plain, (a(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
##
#cnf(i_0_62, plain, (a(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X2,X1)|~main_query_0(X5,X6))).
##
#cnf(i_0_63, plain, (a(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
##
#cnf(i_0_68, plain, (a(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_1(X2,X1))).
##
#cnf(i_0_69, plain, (a(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_0(X2,X1))).
##
#cnf(i_0_20, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~b(X2,X5,X6)|~tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|~tab(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4))).
#
#cnf(i_0_86, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~b(X2,X4,X6)|~tab(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_0(X7,X8))).
#
#cnf(i_0_92, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~b(X2,X4,X6)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_0(X7,X8)|~main_query_0(X9,X10))).
#
#cnf(i_0_94, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~b(X2,X4,X6)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_1(X9,X10)|~main_query_0(X7,X8))).
#
#cnf(i_0_99, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
#
#cnf(i_0_100, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X11,X12)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X13,X14))).
#
#cnf(i_0_101, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_0(X7,X8)|~main_query_0(X9,X10))).
#
#cnf(i_0_102, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(X2,X4,X6)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
#
#cnf(i_0_103, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(X2,X4,X6)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_1(X11,X12)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X13,X14))).
#
#cnf(i_0_104, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(X2,X4,X6)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_0(X7,X8)|~main_query_0(X9,X10))).
###
#cnf(i_0_107, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X7,X8)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_0(X9,X10))).
###
#cnf(i_0_110, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(X2,X4,X6)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_1(X7,X8)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_0(X9,X10))).
#
#cnf(i_0_111, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X15,X16)|~main_query_0(X17,X18))).
#
#cnf(i_0_112, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X15,X16)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X17,X18))).
#
#cnf(i_0_113, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
###
#cnf(i_0_116, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X7,X8)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
###
#cnf(i_0_119, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
############
#cnf(i_0_131, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X13,X14))).
####
#cnf(i_0_88, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~b(X2,X4,X6)|~tab(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_1(X7,X8))).
##
#cnf(i_0_137, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~b(X2,X4,X6)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_1(X7,X8)|~main_query_1(X9,X10))).
###
#cnf(i_0_144, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X13,X14))).
###
#cnf(i_0_147, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(X2,X4,X6)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X13,X14))).
###
#cnf(i_0_150, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_1(X15,X16)|~main_query_1(X17,X18))).
########
#cnf(i_0_96, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~tab(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12))).
###
#cnf(i_0_97, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~tab(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X9,X10)|~main_query_0(X7,X8)|~main_query_0(X11,X12))).
###
#cnf(i_0_98, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~tab(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_0(X7,X8))).
#####
#cnf(i_0_141, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(esk20_5(X1,X2,X3,X5,X4),esk21_5(X1,X2,X3,X5,X4),esk22_5(X1,X2,X3,X5,X4))|~tab(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~a(X2,X4,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12))).
###########
#cnf(i_0_17, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|tab(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(X1,X3,X4))).
#
#cnf(i_0_172, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X8)|~a(X1,X3,X4)|~main_query_0(X6,X7))).
#
#cnf(i_0_178, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X8)|~a(X1,X3,X4)|~main_query_0(X6,X7)|~main_query_0(X9,X10))).
#
#cnf(i_0_179, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X8)|~a(X1,X3,X4)|~main_query_1(X6,X7)|~main_query_0(X9,X10))).
#
#cnf(i_0_191, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X10)|~a(X1,X3,X4)|~main_query_0(X6,X7)|~main_query_0(X8,X9)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
#
#cnf(i_0_192, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X10)|~a(X1,X3,X4)|~main_query_1(X6,X7)|~main_query_0(X8,X9)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
#
#cnf(i_0_193, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X10)|~a(X1,X3,X4)|~main_query_1(X6,X7)|~main_query_1(X8,X9)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
#
#cnf(i_0_202, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
#
#cnf(i_0_203, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X11,X12)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X13,X14))).
#
#cnf(i_0_204, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_0(X7,X8)|~main_query_0(X9,X10))).
###
#cnf(i_0_207, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X10)|~a(X1,X3,X4)|~main_query_1(X6,X7)|~main_query_1(X8,X9)|~main_query_1(X11,X12)|~main_query_0(X13,X14))).
###
#cnf(i_0_218, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_0(X9,X10))).
#
#cnf(i_0_231, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X15,X16)|~main_query_0(X17,X18))).
#
#cnf(i_0_232, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X15,X16)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X17,X18))).
#
#cnf(i_0_233, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
###
#cnf(i_0_248, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
###
#cnf(i_0_263, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
############
#cnf(i_0_311, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X13,X14))).
####
#cnf(i_0_173, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X8)|~a(X1,X3,X4)|~main_query_1(X6,X7))).
##
#cnf(i_0_396, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X8)|~a(X1,X3,X4)|~main_query_1(X6,X7)|~main_query_1(X9,X10))).
###
#cnf(i_0_410, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X10)|~a(X1,X3,X4)|~main_query_1(X6,X7)|~main_query_1(X8,X9)|~main_query_1(X11,X12)|~main_query_1(X13,X14))).
###
#cnf(i_0_421, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X13,X14))).
###
#cnf(i_0_436, plain, (a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_1(X15,X16)|~main_query_1(X17,X18))).
########
#cnf(i_0_188, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12))).
###
#cnf(i_0_189, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X9,X10)|~main_query_0(X7,X8)|~main_query_0(X11,X12))).
###
#cnf(i_0_190, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_0(X7,X8))).
#####
#cnf(i_0_407, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12))).
#############
#cnf(i_0_18, plain, (tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~b(X2,X5,X6)|~tab(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4))).
#
#cnf(i_0_501, plain, (tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~b(X2,X5,X6)|~a(X1,X3,X4)|~main_query_0(X7,X8))).
#
#cnf(i_0_508, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~b(X2,X5,X8)|~a(X1,X3,X4)|~main_query_0(X6,X7)|~main_query_0(X9,X10))).
#
#cnf(i_0_527, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~b(X2,X5,X11)|~a(X1,X3,X4)|~main_query_1(X12,X13)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X14,X15))).
#
#cnf(i_0_528, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~b(X2,X5,X11)|~a(X1,X3,X4)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X12,X13)|~main_query_0(X14,X15))).
#
#cnf(i_0_534, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~b(X2,X5,X11)|~a(X1,X3,X4)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_0(X7,X8)|~main_query_0(X9,X10))).
#
#cnf(i_0_509, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~b(X2,X5,X8)|~a(X1,X3,X4)|~main_query_1(X6,X7)|~main_query_0(X9,X10))).
###
#cnf(i_0_566, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~b(X2,X5,X11)|~a(X1,X3,X4)|~main_query_1(X7,X8)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_0(X9,X10))).
#
#cnf(i_0_529, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(X1,X3,X4)|~a(X2,X5,X11)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_1(X16,X17)|~main_query_1(X18,X19)|~main_query_0(X7,X8)|~main_query_0(X9,X10))).
#
#cnf(i_0_530, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(X1,X3,X4)|~a(X2,X5,X11)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19))).
#
#cnf(i_0_531, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(X1,X3,X4)|~a(X2,X5,X11)|~main_query_1(X12,X13)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19))).
#
#cnf(i_0_532, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(X1,X3,X4)|~a(X2,X5,X11)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X16,X17)|~main_query_0(X18,X19))).
#
#cnf(i_0_533, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(X1,X3,X4)|~a(X2,X5,X11)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_1(X16,X17)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X18,X19))).
###################
#cnf(i_0_561, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(X1,X3,X4)|~a(X2,X5,X11)|~main_query_1(X7,X8)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_1(X16,X17)|~main_query_1(X18,X19)|~main_query_0(X9,X10))).
###########
#cnf(i_0_521, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
####
#cnf(i_0_522, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X11,X12)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X13,X14))).
####
#cnf(i_0_523, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_0(X7,X8)|~main_query_0(X9,X10))).
####
#cnf(i_0_524, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
#
#cnf(i_0_525, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~main_query_1(X11,X12)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X13,X14))).
#
#cnf(i_0_526, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_0(X7,X8)|~main_query_0(X9,X10))).
###
#cnf(i_0_555, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_0(X9,X10))).
######
#cnf(i_0_558, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~main_query_1(X7,X8)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_0(X9,X10))).
#
#cnf(i_0_573, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X7)|~a(X2,X5,X6)|~main_query_1(X8,X9)|~main_query_1(X10,X11)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19)|~main_query_0(X20,X21)|~main_query_0(X22,X23))).
#
#cnf(i_0_574, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X7)|~a(X2,X5,X6)|~main_query_1(X8,X9)|~main_query_1(X10,X11)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_1(X20,X21)|~main_query_0(X16,X17)|~main_query_0(X18,X19)|~main_query_0(X22,X23))).
#
#cnf(i_0_575, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X7)|~a(X2,X5,X6)|~main_query_1(X8,X9)|~main_query_1(X10,X11)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_1(X20,X21)|~main_query_1(X22,X23)|~main_query_0(X16,X17)|~main_query_0(X18,X19))).
#
#cnf(i_0_576, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X7)|~a(X2,X5,X6)|~main_query_0(X8,X9)|~main_query_0(X10,X11)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19)|~main_query_0(X20,X21)|~main_query_0(X22,X23))).
#
#cnf(i_0_577, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X7)|~a(X2,X5,X6)|~main_query_1(X20,X21)|~main_query_0(X8,X9)|~main_query_0(X10,X11)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19)|~main_query_0(X22,X23))).
#
#cnf(i_0_578, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X7)|~a(X2,X5,X6)|~main_query_1(X20,X21)|~main_query_1(X22,X23)|~main_query_0(X8,X9)|~main_query_0(X10,X11)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19))).
###
#cnf(i_0_581, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X7)|~a(X2,X5,X6)|~main_query_1(X8,X9)|~main_query_1(X20,X21)|~main_query_1(X22,X23)|~main_query_0(X10,X11)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19))).
#########
#cnf(i_0_590, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X7)|~a(X2,X5,X6)|~main_query_1(X8,X9)|~main_query_1(X10,X11)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_1(X16,X17)|~main_query_1(X20,X21)|~main_query_1(X22,X23)|~main_query_0(X18,X19))).
#########################################
#cnf(i_0_591, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X15,X16)|~main_query_0(X17,X18))).
#
#cnf(i_0_592, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X15,X16)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X17,X18))).
#
#cnf(i_0_593, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
###
#cnf(i_0_604, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
###
#cnf(i_0_615, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X11,X12)|~main_query_0(X13,X14))).
############
#cnf(i_0_671, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X15,X16)|~main_query_1(X17,X18)|~main_query_0(X13,X14))).
##############################################################
#cnf(i_0_503, plain, (tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~b(X2,X5,X6)|~a(X1,X3,X4)|~main_query_1(X7,X8))).
##
#cnf(i_0_768, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~b(X2,X5,X8)|~a(X1,X3,X4)|~main_query_1(X6,X7)|~main_query_1(X9,X10))).
###
#cnf(i_0_793, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~b(X2,X5,X11)|~a(X1,X3,X4)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X12,X13)|~main_query_1(X14,X15))).
#
#cnf(i_0_788, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(X1,X3,X4)|~a(X2,X5,X11)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_1(X16,X17)|~main_query_1(X18,X19))).
#############
#cnf(i_0_782, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X13,X14))).
######
#cnf(i_0_785, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X13,X14))).
###
#cnf(i_0_802, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(X1,X3,X4)|~a(X2,X5,X7)|~a(X2,X5,X6)|~main_query_1(X8,X9)|~main_query_1(X10,X11)|~main_query_1(X12,X13)|~main_query_1(X14,X15)|~main_query_1(X16,X17)|~main_query_1(X18,X19)|~main_query_1(X20,X21)|~main_query_1(X22,X23))).
#############
#cnf(i_0_805, plain, (a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~a(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_1(X13,X14)|~main_query_1(X15,X16)|~main_query_1(X17,X18))).
#####################################################################
#cnf(i_0_518, plain, (tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12))).
###
#cnf(i_0_519, plain, (tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X9,X10)|~main_query_0(X7,X8)|~main_query_0(X11,X12))).
###
#cnf(i_0_520, plain, (tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X9,X10)|~main_query_1(X11,X12)|~main_query_0(X7,X8))).
#####
#cnf(i_0_779, plain, (tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~a(X2,X5,X6)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_1(X11,X12))).
###########
#cnf(i_0_19, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|tab(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|~a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4))).
#
#cnf(i_0_883, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X8)|~tab(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|~a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~main_query_0(X6,X7))).
#
#cnf(i_0_890, plain, (b(esk20_5(X1,X2,X3,X4,X5),esk21_5(X1,X2,X3,X4,X5),esk22_5(X1,X2,X3,X4,X5))|main_query_1(X1,X2)|X2!=X3|X1!=X5|~b(X2,X5,X6)|~a(esk17_5(X1,X2,X3,X4,X5),esk18_5(X1,X2,X3,X4,X5),esk19_5(X1,X2,X3,X4,X5))|~a(X1,X3,X4)|~main_query_0(X7,X8)|~main_query_0(X9,X10))).
#
#cnf(i_0_912, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(X2,X4,X6)|~b(X2,X4,X11)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X12,X13)|~main_query_0(X14,X15))).
#
#cnf(i_0_913, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(X2,X4,X6)|~b(X2,X4,X11)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_1(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X12,X13)|~main_query_0(X14,X15))).
#
#cnf(i_0_917, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(X2,X4,X6)|~b(X2,X4,X11)|~a(esk17_5(X1,X2,X3,X5,X4),esk18_5(X1,X2,X3,X5,X4),esk19_5(X1,X2,X3,X5,X4))|~a(X1,X3,X5)|~main_query_1(X7,X8)|~main_query_1(X9,X10)|~main_query_0(X12,X13)|~main_query_0(X14,X15))).
#
#cnf(i_0_933, plain, (main_query_1(X1,X2)|X2!=X3|X1!=X4|~b(X2,X4,X5)|~b(X2,X4,X6)|~b(X2,X4,X16)|~b(X2,X4,X17)|~a(X1,X3,X7)|~main_query_1(X18,X19)|~main_query_0(X8,X9)|~main_query_0(X10,X11)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X20,X21)|~main_query_0(X22,X23)|~main_query_0(X24,X25))).
#
#cnf(i_0_1012, plain, (main_query_1(X1,X2)|X1!=X3|~b(X2,X3,X4)|~b(X2,X3,X5)|~b(X2,X3,X6)|~b(X2,X3,X7)|~a(X1,X2,X8)|~main_query_1(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X15,X16)|~main_query_0(X17,X18)|~main_query_0(X19,X20)|~main_query_0(X21,X22)|~main_query_0(X23,X24))).
#
#cnf(i_0_1373, plain, (main_query_1(X1,X2)|~b(X2,X1,X3)|~b(X2,X1,X4)|~b(X2,X1,X5)|~b(X2,X1,X6)|~a(X1,X2,X7)|~main_query_1(X8,X9)|~main_query_0(X10,X11)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19)|~main_query_0(X20,X21)|~main_query_0(X22,X23))).
#
#cnf(i_0_1531, plain, (main_query_1(X1,X2)|~b(X2,X1,X3)|~b(X2,X1,X4)|~b(X2,X1,X5)|~b(X2,X1,X6)|~main_query_1(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X15,X16)|~main_query_0(X17,X18)|~main_query_0(X19,X20)|~main_query_0(X21,X22)|~main_query_0(X1,X2))).
#
#cnf(i_0_1614, plain, (main_query_1(X1,X2)|~b(X2,X1,X3)|~b(X2,X1,X4)|~b(X2,X1,X5)|~main_query_1(X6,X7)|~main_query_0(X8,X9)|~main_query_0(X10,X11)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19)|~main_query_0(X20,X21)|~main_query_0(X1,X2))).
#
#cnf(i_0_1679, plain, (main_query_1(X1,X2)|~b(X2,X1,X3)|~b(X2,X1,X4)|~main_query_1(X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X15,X16)|~main_query_0(X17,X18)|~main_query_0(X19,X20)|~main_query_0(X1,X2))).
#
#cnf(i_0_1728, plain, (main_query_1(X1,X2)|~b(X2,X1,X3)|~main_query_1(X4,X5)|~main_query_0(X6,X7)|~main_query_0(X8,X9)|~main_query_0(X10,X11)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19)|~main_query_0(X1,X2))).
#
#cnf(i_0_1761, plain, (main_query_1(X1,X2)|~main_query_1(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X15,X16)|~main_query_0(X17,X18)|~main_query_0(X1,X2))).
#
#cnf(i_0_2016, negated_conjecture, (main_query_1(X1,X2)|main_query_0(esk1_0,esk2_0)|~main_query_0(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X15,X16)|~main_query_0(X1,X2))).
###
#cnf(i_0_1766, negated_conjecture, (~main_query_1(X1,X2)|~main_query_0(esk1_0,esk2_0)|~main_query_0(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X15,X16))).
#################################################
#cnf(i_0_1435, plain, (main_query_1(X1,X2)|X1!=X3|~b(X2,X3,X4)|~b(X2,X3,X5)|~b(X2,X3,X6)|~a(X1,X2,X7)|~main_query_1(X8,X9)|~main_query_0(X10,X11)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19)|~main_query_0(X20,X21)|~main_query_0(X22,X23)|~main_query_0(X3,X2))).
#
#cnf(i_0_2336, plain, (main_query_1(X1,X2)|X1!=X3|~b(X2,X3,X4)|~b(X2,X3,X5)|~a(X1,X2,X6)|~main_query_1(X7,X8)|~main_query_0(X9,X10)|~main_query_0(X11,X12)|~main_query_0(X13,X14)|~main_query_0(X15,X16)|~main_query_0(X17,X18)|~main_query_0(X19,X20)|~main_query_0(X21,X22)|~main_query_0(X3,X2))).
#
#cnf(i_0_2437, plain, (main_query_1(X1,X2)|X1!=X3|~b(X2,X3,X4)|~a(X1,X2,X5)|~main_query_1(X6,X7)|~main_query_0(X8,X9)|~main_query_0(X10,X11)|~main_query_0(X12,X13)|~main_query_0(X14,X15)|~main_query_0(X16,X17)|~main_query_0(X18,X19)|~main_query_0(X20,X21)|~main_query_0(X3,X2))).
#
#cnf(i_0_2522, plain, (main_query_1(X1,X2)|X1!=X3|~a(X1,X2,X4)|~main_query_1(X5,X6)|~main_query_0(X7,X8)|~main_query_0(X9,X10)|~main_que