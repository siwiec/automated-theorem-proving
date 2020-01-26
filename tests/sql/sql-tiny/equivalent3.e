# Initializing proof state
# Scanning for AC axioms
#
#cnf(i_0_32, plain, (lessthanorequal(X1,X1))).
#
#cnf(i_0_9, plain, (esk3_2(X2,X1)=X1|~main_query_0(X2,X1))).
#
#cnf(i_0_10, plain, (esk5_2(X1,X2)=X1|~main_query_0(X1,X2))).
#
#cnf(i_0_2, negated_conjecture, (~main_query_1(esk1_0,esk2_0)|~main_query_0(esk1_0,esk2_0))).
#
#cnf(i_0_21, plain, (esk13_2(X2,X1)=X1|~main_query_1(X2,X1))).
#
#cnf(i_0_22, plain, (esk15_2(X1,X2)=X1|~main_query_1(X1,X2))).
#
#cnf(i_0_33, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X2))).
#
#cnf(i_0_1, negated_conjecture, (main_query_1(esk1_0,esk2_0)|main_query_0(esk1_0,esk2_0))).
#
#cnf(i_0_34, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X2,X3)|~lessthanorequal(X1,X2))).
#
#cnf(i_0_15, plain, (a(X1,X2,X3)|~tab(X1,X2,X3)|~main_query_0(X4,X5))).
#
#cnf(i_0_27, plain, (a(X1,X2,X3)|~tab(X1,X2,X3)|~main_query_1(X4,X5))).
#
#cnf(i_0_16, plain, (tab(X1,X2,X3)|~a(X1,X2,X3)|~main_query_0(X4,X5))).
#
#cnf(i_0_12, plain, (b(X1,X2,X3)|~tab(X1,X2,X3)|~main_query_0(X4,X5))).
#
#cnf(i_0_24, plain, (b(X1,X2,X3)|~tab(X1,X2,X3)|~main_query_1(X4,X5))).
#
#cnf(i_0_13, plain, (tab(X1,X2,X3)|~b(X1,X2,X3)|~main_query_0(X4,X5))).
#
#cnf(i_0_28, plain, (tab(X1,X2,X3)|~a(X1,X2,X3)|~main_query_1(X4,X5))).
#
#cnf(i_0_25, plain, (tab(X1,X2,X3)|~b(X1,X2,X3)|~main_query_1(X4,X5))).
#
#cnf(i_0_8, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_63, plain, (lessthanorequal(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_69, plain, (lessthanorequal(X2,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_70, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
##
#cnf(i_0_77, plain, (X1=X2|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#
#cnf(i_0_64, plain, (lessthanorequal(X2,esk5_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_72, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
##
#cnf(i_0_73, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_93, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
###
#cnf(i_0_67, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3))).
###
#cnf(i_0_68, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_80, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_90, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
##
#cnf(i_0_102, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_79, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
##
#cnf(i_0_89, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_103, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_39, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3))).
###
#cnf(i_0_14, plain, (a(X1,esk3_2(X1,X2),esk4_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_207, plain, (a(X1,X2,esk4_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_76, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_82, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X3)|~main_query_0(X1,X3))).
##
#cnf(i_0_26, plain, (a(X1,esk13_2(X1,X2),esk14_2(X1,X2))|~main_query_1(X1,X2))).
#
#cnf(i_0_259, plain, (a(X1,X2,esk14_2(X1,X2))|~main_query_1(X1,X2))).
##
#cnf(i_0_84, plain, (X1=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_94, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_11, plain, (b(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_298, plain, (b(X1,X2,esk6_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_96, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_23, plain, (b(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X2,X1))).
#
#cnf(i_0_312, plain, (b(X1,X2,esk16_2(X2,X1))|~main_query_1(X2,X1))).
#
#cnf(i_0_108, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
##
#cnf(i_0_110, plain, (X1=X2|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
#############
#cnf(i_0_41, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4))).
#####
#cnf(i_0_85, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X2,X4))).
###
#cnf(i_0_86, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4))).
###
#cnf(i_0_87, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_98, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3))).
##
#cnf(i_0_99, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_100, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
#####
#cnf(i_0_112, plain, (lessthanorequal(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
###############
#cnf(i_0_65, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,esk3_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_745, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
##
#cnf(i_0_771, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_786, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_75, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_78, plain, (esk5_2(X2,X1)=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_793, plain, (esk5_2(X1,X2)=X2|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#####
#cnf(i_0_801, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_173, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2))).
##
#cnf(i_0_808, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(esk5_2(X1,X2),X2)|~main_query_0(X1,X2))).
#
#cnf(i_0_822, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
#####
#cnf(i_0_185, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3))).
###
#cnf(i_0_212, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_61, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3))).
##
#cnf(i_0_224, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_238, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X3,X2))).
##
#cnf(i_0_264, plain, (X1=X2|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_276, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X1,X3))).
##
#cnf(i_0_302, plain, (X1=X2|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#####
#cnf(i_0_62, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_88, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_101, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
#####
#cnf(i_0_49, plain, (a(X1,X2,X3)|~b(X1,X2,X3)|~main_query_0(X4,X5)|~main_query_0(X6,X7))).
#
#cnf(i_0_47, plain, (b(X1,X2,X3)|~a(X1,X2,X3)|~main_query_0(X4,X5)|~main_query_0(X6,X7))).
#
#cnf(i_0_50, plain, (a(X1,X2,X3)|~b(X1,X2,X3)|~main_query_1(X4,X5)|~main_query_0(X6,X7))).
##
#cnf(i_0_58, plain, (a(X1,X2,X3)|~b(X1,X2,X3)|~main_query_1(X4,X5)|~main_query_1(X6,X7))).
#
#cnf(i_0_48, plain, (b(X1,X2,X3)|~a(X1,X2,X3)|~main_query_1(X4,X5)|~main_query_0(X6,X7))).
##
#cnf(i_0_56, plain, (b(X1,X2,X3)|~a(X1,X2,X3)|~main_query_1(X4,X5)|~main_query_1(X6,X7))).
#
#cnf(i_0_769, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_772, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_773, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_777, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
##
#cnf(i_0_847, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_850, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_851, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_855, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
##################
#cnf(i_0_936, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_1022, plain, (lessthanorequal(X1,X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
###
#cnf(i_0_1062, plain, (lessthanorequal(X1,X3)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_965, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_118, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_120, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_121, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
####
#cnf(i_0_122, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_127, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X3,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_128, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_135, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_137, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
###
#cnf(i_0_138, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X3,X1))).
###
#cnf(i_0_129, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
####
#cnf(i_0_130, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
###
#cnf(i_0_139, plain, (lessthanorequal(X1,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
##
#cnf(i_0_148, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_149, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
###
#cnf(i_0_146, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3))).
####
#cnf(i_0_147, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_155, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
###
#cnf(i_0_156, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_157, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_166, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_167, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_158, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_164, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_165, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
#########################################
#cnf(i_0_177, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4))).
####
#cnf(i_0_179, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_180, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X4,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_181, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X2))).
####
#cnf(i_0_192, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X4))).
#####
#cnf(i_0_194, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X3)|~main_query_0(X1,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_216, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
####
#cnf(i_0_218, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_219, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_220, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X1))).
####
#cnf(i_0_231, plain, (X1=X2|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
#####
#cnf(i_0_233, plain, (X1=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
#####
#cnf(i_0_245, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
##
#cnf(i_0_246, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X2))).
####
#cnf(i_0_271, plain, (X1=X2|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
##
#cnf(i_0_272, plain, (X1=X2|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1))).
#############
#cnf(i_0_765, plain, (esk3_2(X1,esk5_2(X2,X1))=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
##
#cnf(i_0_5466, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
######
#cnf(i_0_842, plain, (esk5_2(esk3_2(X1,X2),X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_5510, plain, (esk5_2(X2,X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#################################################################
#cnf(i_0_202, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X1,X4))).
#####
#cnf(i_0_204, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~lessthanorequal(X1,X4)|~main_query_0(X2,X4))).
####
#cnf(i_0_205, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_206, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X1))).
####
#cnf(i_0_256, plain, (X1=X2|~lessthanorequal(X2,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X3)|~main_query_0(X2,X4))).
###
#cnf(i_0_257, plain, (X1=X2|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_258, plain, (X1=X2|~lessthanorequal(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X1))).
####
#cnf(i_0_296, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X4,X2)|~main_query_0(X3,X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_297, plain, (X1=X2|~lessthanorequal(X3,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X1))).
#####
#cnf(i_0_324, plain, (X1=X2|~main_query_0(X1,X3)|~main_query_0(X3,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X1))).
######################
#cnf(i_0_1065, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X2,X1)|~main_query_0(X3,X4)|~main_query_0(X5,X6))).
####
#cnf(i_0_1066, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_0(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1071, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X2,X1)|~main_query_0(X5,X6))).
####
#cnf(i_0_1072, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1077, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_1(X2,X1))).
####
#cnf(i_0_1078, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_0(X2,X1))).
#
#cnf(i_0_198, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,esk3_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_1095, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
#
#cnf(i_0_8451, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
#
#cnf(i_0_199, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(esk5_2(X2,X1),X3)|~lessthanorequal(X3,X1)|~main_query_0(X2,X1))).
###
#cnf(i_0_250, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_251, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(esk5_2(X2,X1),X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
###
#cnf(i_0_289, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,esk3_2(X1,X2))|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_290, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(X3,X1)|~main_query_0(X3,esk5_2(X2,X1))|~main_query_0(X2,X1))).
##
#cnf(i_0_316, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_317, plain, (esk5_2(X2,X1)=X1|~main_query_0(X3,esk5_2(X2,X1))|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
###
#cnf(i_0_1158, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_1197, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_1236, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
###
#cnf(i_0_1107, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_1130, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_1258, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X1))).
#
#cnf(i_0_9131, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X2,X1)|~main_query_0(X2,X1))).
#
#cnf(i_0_1170, plain, (esk3_2(X1,X2)=X1|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_1323, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_1208, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_1364, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#
#cnf(i_0_1265, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_1288, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_1330, plain, (esk5_2(X1,X2)=X2|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_1405, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
#
#cnf(i_0_1370, plain, (esk5_2(X1,X2)=X2|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_5467, plain, (esk3_2(X1,X1)=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_9671, plain, (esk3_2(X1,X1)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#######
#cnf(i_0_5512, plain, (esk5_2(X1,X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#
#cnf(i_0_9734, plain, (esk5_2(X1,X1)=X1|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
##################
#cnf(i_0_335, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~lessthanorequal(X5,X2)|~lessthanorequal(X4,X5))).
#####
#cnf(i_0_336, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~lessthanorequal(X5,X2)|~lessthanorequal(X4,X5)|~main_query_0(X3,X1))).
######
#cnf(i_0_344, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~lessthanorequal(X5,X3)|~lessthanorequal(X4,X5)|~main_query_0(X2,X3))).
#####
#cnf(i_0_359, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X5)|~main_query_0(X4,X5))).
####
#cnf(i_0_360, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X5,X4)|~main_query_0(X5,X3))).
####
#cnf(i_0_361, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X4,X5)|~main_query_0(X5,X3))).
#######
#cnf(i_0_374, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X2,X5)|~main_query_0(X5,X4))).
########
#cnf(i_0_387, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X5)|~main_query_0(X5,X1))).
#####
#cnf(i_0_399, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~lessthanorequal(X4,X5)|~main_query_0(X3,X1)|~main_query_0(X2,X5))).
########
#cnf(i_0_426, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X5,X4)|~main_query_0(X2,X4)|~main_query_0(X5,X3))).
###
#cnf(i_0_427, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X5)|~main_query_0(X5,X3))).
######
#cnf(i_0_441, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X2,X4)|~main_query_0(X3,X5)|~main_query_0(X5,X1))).
###
#cnf(i_0_453, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X5)|~main_query_0(X3,X1)|~main_query_0(X4,X5))).
######
#cnf(i_0_116, plain, (lessthanorequal(esk3_2(esk3_2(X1,X2),X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_13632, plain, (lessthanorequal(esk3_2(X2,X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_133, plain, (lessthanorequal(X1,esk5_2(X2,esk5_2(X3,X1)))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
##
#cnf(i_0_14030, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
####
#cnf(i_0_484, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X5)|~main_query_0(X5,X1))).
#######
#cnf(i_0_511, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X5)|~main_query_0(X5,X4))).
#######
#cnf(i_0_544, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3)|~main_query_0(X3,X5)|~main_query_0(X5,X1))).
###########################################################################################
#cnf(i_0_124, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X2,X1)|~main_query_0(X2,X3))).
#
#cnf(i_0_14926, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3))).
######
#cnf(i_0_15190, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
#####
#cnf(i_0_15346, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_15615, plain, (esk5_2(X1,X2)=X2|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
#
#cnf(i_0_15258, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
#####
#cnf(i_0_15505, plain, (X1=esk3_2(X2,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#############
#cnf(i_0_15009, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_15323, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#
#cnf(i_0_15723, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#
#cnf(i_0_15975, plain, (a(X1,X3,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#
#cnf(i_0_15600, plain, (esk5_2(X1,X2)=X2|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
###################
#cnf(i_0_126, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_143, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2))).
#
#cnf(i_0_16329, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2))).
######
#cnf(i_0_16613, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#####
#cnf(i_0_16917, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
##
#cnf(i_0_17060, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#
#cnf(i_0_16681, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
######
#cnf(i_0_16945, plain, (esk5_2(X1,X2)=X3|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
###########
#cnf(i_0_16582, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X1)|~main_query_0(X2,X1))).
####
#cnf(i_0_16914, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_17344, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#
#cnf(i_0_17614, plain, (b(X1,X3,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
#
#cnf(i_0_17047, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
###################
#cnf(i_0_145, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X2,X3))).
##
#cnf(i_0_152, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_154, plain, (esk3_2(X1,X2)=X3|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_161, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_163, plain, (X1=esk5_2(X2,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##############
#cnf(i_0_1554, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),esk3_2(X2,X4))|~main_query_0(X2,X4)|~main_query_0(X3,X1))).
###
#cnf(i_0_1664, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X4),esk5_2(X3,X1))|~main_query_0(X2,X4)|~main_query_0(X3,X1))).
######
#cnf(i_0_74, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),esk5_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_18349, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_18437, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_18504, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#################
#cnf(i_0_18448, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_18449, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_18395, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,esk5_2(X1,X2))|~main_query_0(X1,X2))).
####
#cnf(i_0_18470, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_18472, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
############
#cnf(i_0_18503, plain, (b(X1,esk3_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
################
#cnf(i_0_18434, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_19527, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#####
#cnf(i_0_19812, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
########
#cnf(i_0_18436, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_18926, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_20248, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
######################################
#cnf(i_0_18453, plain, (X1=X2|~lessthanorequal(esk3_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_18454, plain, (X1=X2|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_18463, plain, (X1=X2|~lessthanorequal(esk3_2(X3,X2),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_18464, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk3_2(X3,X2))|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_2449, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X4))|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
########
#cnf(i_0_3417, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
############
#cnf(i_0_764, plain, (esk3_2(esk3_2(X1,X2),X1)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_21555, plain, (esk3_2(X2,X1)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_21597, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
######
#cnf(i_0_21668, plain, (lessthanorequal(X1,esk3_2(X1,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
##############
#cnf(i_0_21633, plain, (lessthanorequal(esk3_2(X2,X1),esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
############
#cnf(i_0_22198, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#######
#cnf(i_0_21680, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X1,X3),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_21681, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##############
#cnf(i_0_21630, plain, (lessthanorequal(X1,esk3_2(X3,X2))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_21631, plain, (lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########################
#cnf(i_0_21634, plain, (a(X1,esk3_2(X2,X1),esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_21667, plain, (b(X1,esk3_2(X1,X2),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#################################################
#cnf(i_0_21607, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X1))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
##########
#cnf(i_0_21608, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X1),X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
###
#cnf(i_0_21619, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
##########
#cnf(i_0_21640, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#####
#cnf(i_0_21620, plain, (X1=X2|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_21678, plain, (X1=X2|~lessthanorequal(esk3_2(X2,X3),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
#########
#cnf(i_0_21679, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk3_2(X2,X3))|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_21682, plain, (X1=X2|~lessthanorequal(esk3_2(X1,X3),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#########
#cnf(i_0_21683, plain, (X1=X2|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
######
#cnf(i_0_22035, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_22036, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_22099, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X2,X1),X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_22288, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_22353, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#################
#cnf(i_0_23751, plain, (X1=X2|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_23752, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
###################################
#cnf(i_0_21594, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~lessthanorequal(X3,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_25365, plain, (esk3_2(X2,X1)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_25368, plain, (lessthanorequal(esk3_2(X2,X1),X1)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_26022, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
########
#cnf(i_0_25726, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_21596, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_843, plain, (esk5_2(X1,esk5_2(X2,X1))=esk5_2(X2,X1)|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
###
#cnf(i_0_26697, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_26743, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#######
#cnf(i_0_26824, plain, (esk5_2(X2,X1)=esk3_2(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
############################
#cnf(i_0_26826, plain, (b(X1,esk5_2(X1,X2),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###################
#cnf(i_0_26766, plain, (X1=X2|~lessthanorequal(esk5_2(X1,X3),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#####
#cnf(i_0_26776, plain, (X1=X2|~lessthanorequal(esk5_2(X2,X3),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
#############################################
#cnf(i_0_26752, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
##
#cnf(i_0_27355, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_27386, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_27964, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_27664, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#####
#cnf(i_0_26754, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
########
#cnf(i_0_5452, plain, (a(X1,X1,esk4_2(X1,esk5_2(X2,X1)))|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_28555, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
###
#cnf(i_0_5504, plain, (b(X1,X1,esk6_2(esk3_2(X1,X2),X1))|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_28673, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
###################
#cnf(i_0_16299, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_17816, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_17863, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_17997, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X2,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
################
#cnf(i_0_29077, plain, (X3=esk3_2(X2,X1)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_29273, plain, (X3=esk3_2(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X3,X2))).
########
#cnf(i_0_29275, plain, (X3=esk5_2(X2,X1)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
############################
#cnf(i_0_30430, plain, (X3=esk5_2(X2,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X2,X3))).
################################################################
#cnf(i_0_123, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
########
#cnf(i_0_142, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(esk5_2(X4,X1),X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_151, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
####
#cnf(i_0_160, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
############
#cnf(i_0_1890, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
#
#cnf(i_0_34107, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###############
#cnf(i_0_34469, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_34474, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X1,X3))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_2012, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
###
#cnf(i_0_174, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X1)|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_175, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X1)|~lessthanorequal(X1,X2)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_183, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X4))|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(X3,X4))).
#######
#cnf(i_0_184, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X4))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
#####
#cnf(i_0_213, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_214, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_222, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
######
#cnf(i_0_223, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
######
#cnf(i_0_239, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(X1,esk5_2(X3,X4))|~main_query_0(X3,X4))).
###
#cnf(i_0_2415, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X4,X1),X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
#####
#cnf(i_0_240, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk5_2(X3,X4))|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
##
#cnf(i_0_265, plain, (X1=X2|~lessthanorequal(X1,X4)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_266, plain, (X1=X2|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_2548, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_274, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(esk3_2(X3,X4),X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_275, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X2)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
###
#cnf(i_0_300, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_301, plain, (X1=X2|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_809, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X4)|~lessthanorequal(X1,X2)|~lessthanorequal(X4,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_812, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X4)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
###
#cnf(i_0_813, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X4,X1)|~main_query_0(X4,esk5_2(X3,X2))|~main_query_0(X3,X2))).
###
#cnf(i_0_817, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X4,esk5_2(X3,X2))|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
##
#cnf(i_0_866, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X1,X3))|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(X1,X3))).
#######
#cnf(i_0_869, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(esk3_2(X1,X3),X4)|~main_query_0(X1,X3))).
###
#cnf(i_0_870, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X1,X3))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
######
#cnf(i_0_874, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X1,X3),X4)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
##
#cnf(i_0_885, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_888, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
####
#cnf(i_0_889, plain, (X1=X2|~lessthanorequal(X4,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_893, plain, (X1=X2|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
##
#cnf(i_0_943, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#######
#cnf(i_0_946, plain, (X1=X2|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_947, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
######
#cnf(i_0_951, plain, (X1=X2|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
#################
#cnf(i_0_13634, plain, (lessthanorequal(esk3_2(X1,X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_42889, plain, (lessthanorequal(esk3_2(X1,X2),X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
##
#cnf(i_0_14031, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_43537, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_19798, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_20526, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
########
#cnf(i_0_22287, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####################
#cnf(i_0_22351, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk3_2(X2,X1),X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####################
#cnf(i_0_25995, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_27939, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
############################################
#cnf(i_0_42900, plain, (lessthanorequal(esk3_2(X1,X2),X1)|~main_query_0(esk3_2(X3,X1),X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
########
#cnf(i_0_43552, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_43554, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_43557, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#################################################
#cnf(i_0_5704, plain, (X1=X2|~lessthanorequal(esk5_2(X4,X1),X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X4,X1))).
#####
#cnf(i_0_5751, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X2,X4))|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X4))).
#########
#cnf(i_0_6068, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,esk5_2(X4,X1))|~main_query_0(X4,X1))).
####
#cnf(i_0_6116, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~lessthanorequal(X1,X4)|~main_query_0(X2,X4)|~main_query_0(X3,X2))).
####
#cnf(i_0_6163, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X4)|~main_query_0(X1,X3))).
######
#cnf(i_0_6383, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(esk3_2(X2,X4),X1)|~main_query_0(X2,X4))).
####
#cnf(i_0_6432, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~lessthanorequal(X4,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_6479, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~lessthanorequal(X4,X2)|~main_query_0(X4,X1)|~main_query_0(X1,X3))).
#####
#cnf(i_0_6700, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~main_query_0(X2,X4)|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_6747, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~main_query_0(X2,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_6968, plain, (X1=X2|~lessthanorequal(X2,X3)|~main_query_0(X2,esk5_2(X4,X1))|~main_query_0(X1,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_19542, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_7235, plain, (X1=X2|~lessthanorequal(X2,X3)|~main_query_0(esk3_2(X2,X4),X1)|~main_query_0(X1,X3)|~main_query_0(X2,X4))).
###
#cnf(i_0_7284, plain, (X1=X2|~lessthanorequal(X4,X2)|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_7504, plain, (X1=X2|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X4)|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
##
#cnf(i_0_7723, plain, (X1=X2|~lessthanorequal(X3,X1)|~main_query_0(esk3_2(X2,X4),X1)|~main_query_0(X3,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_7991, plain, (X1=X2|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X3))).
#####
#cnf(i_0_20265, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##############################################################################################
#cnf(i_0_349, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X3,X4))).
########
#cnf(i_0_414, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
#######
#cnf(i_0_624, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,