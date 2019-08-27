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
#cnf(i_0_72, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_73, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
##
#cnf(i_0_92, plain, (lessthanorequal(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_68, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3))).
###
#cnf(i_0_67, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_79, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_89, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_103, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
####
#cnf(i_0_80, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
##
#cnf(i_0_90, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_102, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_39, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3))).
###
#cnf(i_0_14, plain, (a(X1,esk3_2(X1,X2),esk4_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_207, plain, (a(X1,X2,esk4_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_76, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_82, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(X3,X2))).
##
#cnf(i_0_26, plain, (a(X1,esk13_2(X1,X2),esk14_2(X1,X2))|~main_query_1(X1,X2))).
#
#cnf(i_0_259, plain, (a(X1,X2,esk14_2(X1,X2))|~main_query_1(X1,X2))).
##
#cnf(i_0_84, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_94, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X3)|~main_query_0(X1,X3))).
###
#cnf(i_0_11, plain, (b(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_298, plain, (b(X1,X2,esk6_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_96, plain, (X1=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_23, plain, (b(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X2,X1))).
#
#cnf(i_0_312, plain, (b(X1,X2,esk16_2(X2,X1))|~main_query_1(X2,X1))).
#
#cnf(i_0_108, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
##
#cnf(i_0_110, plain, (X1=X2|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#############
#cnf(i_0_41, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4))).
#####
#cnf(i_0_85, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_86, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X4,X3))).
###
#cnf(i_0_87, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3))).
####
#cnf(i_0_98, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_99, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X2,X4))).
###
#cnf(i_0_100, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
#####
#cnf(i_0_112, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###############
#cnf(i_0_65, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,esk3_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_745, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
##
#cnf(i_0_770, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
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
#cnf(i_0_821, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(esk5_2(X1,X2),X2)|~main_query_0(X1,X2))).
#
#cnf(i_0_822, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
#####
#cnf(i_0_183, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3))).
###
#cnf(i_0_212, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_61, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_222, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_235, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X1,X3))).
##
#cnf(i_0_62, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3))).
##
#cnf(i_0_261, plain, (X1=X2|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_88, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_277, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X3,X2))).
##
#cnf(i_0_101, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_303, plain, (X1=X2|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#########
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
#cnf(i_0_768, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_771, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_772, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_776, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_846, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_849, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_850, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_854, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##################
#cnf(i_0_977, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_1019, plain, (lessthanorequal(X1,X3)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_1060, plain, (lessthanorequal(X1,X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
###
#cnf(i_0_899, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_117, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_119, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
####
#cnf(i_0_120, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_121, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_129, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X3,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_130, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_134, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_136, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X3,X1))).
###
#cnf(i_0_137, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
###
#cnf(i_0_127, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
####
#cnf(i_0_128, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
###
#cnf(i_0_138, plain, (lessthanorequal(X1,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
##
#cnf(i_0_146, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_147, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
###
#cnf(i_0_148, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3))).
####
#cnf(i_0_149, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_155, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_156, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_157, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
###
#cnf(i_0_166, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
###
#cnf(i_0_167, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_158, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_164, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_165, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
#########################################
#cnf(i_0_176, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4))).
####
#cnf(i_0_178, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X4,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_179, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_180, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
#####
#cnf(i_0_192, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X4))).
###
#cnf(i_0_193, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X3)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
##
#cnf(i_0_215, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
####
#cnf(i_0_217, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_218, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_219, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
#####
#cnf(i_0_231, plain, (X1=X2|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
###
#cnf(i_0_232, plain, (X1=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X3)|~main_query_0(X2,X4))).
#####
#cnf(i_0_244, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
###
#cnf(i_0_245, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
####
#cnf(i_0_270, plain, (X1=X2|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
##
#cnf(i_0_271, plain, (X1=X2|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X2,X4))).
#############################
#cnf(i_0_765, plain, (esk3_2(X1,esk5_2(X2,X1))=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
##
#cnf(i_0_5469, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
######
#cnf(i_0_840, plain, (esk5_2(esk3_2(X1,X2),X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_5513, plain, (esk5_2(X2,X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#####################################################
#cnf(i_0_202, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X1,X4))).
#####
#cnf(i_0_204, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_205, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~lessthanorequal(X1,X4)|~main_query_0(X2,X4))).
####
#cnf(i_0_206, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X4))).
####
#cnf(i_0_256, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X4,X2)|~main_query_0(X3,X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_257, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X1,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X4))).
###
#cnf(i_0_258, plain, (X1=X2|~lessthanorequal(X3,X1)|~main_query_0(X3,X2)|~main_query_0(X4,X1)|~main_query_0(X2,X4))).
####
#cnf(i_0_296, plain, (X1=X2|~lessthanorequal(X2,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X3)|~main_query_0(X2,X4))).
###
#cnf(i_0_297, plain, (X1=X2|~lessthanorequal(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X4))).
#####
#cnf(i_0_324, plain, (X1=X2|~main_query_0(X3,X2)|~main_query_0(X1,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X4))).
######################
#cnf(i_0_1065, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_0(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1066, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X2,X1)|~main_query_0(X3,X4)|~main_query_0(X5,X6))).
####
#cnf(i_0_1071, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1072, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X2,X1)|~main_query_0(X5,X6))).
####
#cnf(i_0_1077, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1078, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_1(X2,X1))).
#
#cnf(i_0_196, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,esk3_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_1095, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
#
#cnf(i_0_8483, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
#
#cnf(i_0_199, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(esk5_2(X2,X1),X3)|~lessthanorequal(X3,X1)|~main_query_0(X2,X1))).
###
#cnf(i_0_248, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,esk3_2(X1,X2))|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_1158, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_251, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(X3,X1)|~main_query_0(X3,esk5_2(X2,X1))|~main_query_0(X2,X1))).
##
#cnf(i_0_1197, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#
#cnf(i_0_287, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_290, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(esk5_2(X2,X1),X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
###
#cnf(i_0_314, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_1236, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#
#cnf(i_0_317, plain, (esk5_2(X2,X1)=X1|~main_query_0(X3,esk5_2(X2,X1))|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
###
#cnf(i_0_1258, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X1))).
#
#cnf(i_0_9032, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X2,X1)|~main_query_0(X2,X1))).
###
#cnf(i_0_1323, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_1364, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_1405, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
#
#cnf(i_0_1107, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_1127, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_1166, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_1209, plain, (esk3_2(X1,X2)=X1|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_1265, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_1285, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_1326, plain, (esk5_2(X1,X2)=X2|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_1371, plain, (esk5_2(X1,X2)=X2|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_5470, plain, (esk3_2(X1,X1)=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_9674, plain, (esk3_2(X1,X1)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_5515, plain, (esk5_2(X1,X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#
#cnf(i_0_9737, plain, (esk5_2(X1,X1)=X1|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###################
#cnf(i_0_340, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~lessthanorequal(X1,X5))).
#####
#cnf(i_0_341, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~lessthanorequal(X1,X5)|~main_query_0(X2,X3))).
######
#cnf(i_0_346, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~lessthanorequal(X5,X4)|~lessthanorequal(X3,X5)|~main_query_0(X3,X1))).
######
#cnf(i_0_359, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X5)|~main_query_0(X4,X5))).
####
#cnf(i_0_360, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X5,X1)|~main_query_0(X4,X5))).
######
#cnf(i_0_372, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X5)|~main_query_0(X3,X5))).
####
#cnf(i_0_373, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X5,X4)|~main_query_0(X3,X5))).
#######
#cnf(i_0_116, plain, (lessthanorequal(esk3_2(esk3_2(X1,X2),X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_12043, plain, (lessthanorequal(esk3_2(X2,X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_133, plain, (lessthanorequal(X1,esk5_2(X2,esk5_2(X3,X1)))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
##
#cnf(i_0_12421, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
##
#cnf(i_0_386, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X5,X3)|~main_query_0(X2,X5))).
####
#cnf(i_0_405, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~main_query_0(X2,X3)|~main_query_0(X5,X1))).
#######
#cnf(i_0_425, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X5)|~main_query_0(X4,X1)|~main_query_0(X3,X5))).
###
#cnf(i_0_426, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X4,X1)|~main_query_0(X5,X4)|~main_query_0(X3,X5))).
#####
#cnf(i_0_440, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X5,X3)|~main_query_0(X2,X5))).
###
#cnf(i_0_460, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~lessthanorequal(X5,X3)|~main_query_0(X2,X3)|~main_query_0(X5,X4))).
########
#cnf(i_0_483, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X4,X3)|~main_query_0(X5,X4)|~main_query_0(X2,X5))).
#######
#cnf(i_0_518, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X5,X1)|~main_query_0(X4,X5))).
#######
#cnf(i_0_543, plain, (lessthanorequal(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X5,X3)|~main_query_0(X2,X5))).
###########################################################################################
#cnf(i_0_124, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X2,X1)|~main_query_0(X2,X3))).
#
#cnf(i_0_14929, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3))).
######
#cnf(i_0_15192, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
#####
#cnf(i_0_15349, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_15617, plain, (esk5_2(X1,X2)=X2|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
#
#cnf(i_0_15260, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
#####
#cnf(i_0_15507, plain, (X1=esk3_2(X2,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#############
#cnf(i_0_15012, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_15326, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#
#cnf(i_0_15726, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#
#cnf(i_0_15978, plain, (a(X1,X3,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#
#cnf(i_0_15595, plain, (esk5_2(X1,X2)=X2|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
###################
#cnf(i_0_126, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_143, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2))).
#
#cnf(i_0_16332, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2))).
######
#cnf(i_0_16615, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#####
#cnf(i_0_16920, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
##
#cnf(i_0_17062, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#
#cnf(i_0_16683, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
######
#cnf(i_0_16947, plain, (esk5_2(X1,X2)=X3|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
###########
#cnf(i_0_16585, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X1)|~main_query_0(X2,X1))).
####
#cnf(i_0_16917, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_17347, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#
#cnf(i_0_17617, plain, (b(X1,X3,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
#
#cnf(i_0_17050, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
###################
#cnf(i_0_145, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X2,X3))).
##
#cnf(i_0_152, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_154, plain, (X1=esk5_2(X2,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_161, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_163, plain, (esk3_2(X1,X2)=X3|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##############
#cnf(i_0_1554, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),esk3_2(X2,X4))|~main_query_0(X2,X4)|~main_query_0(X3,X1))).
###
#cnf(i_0_1745, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X4),esk5_2(X3,X1))|~main_query_0(X2,X4)|~main_query_0(X3,X1))).
######
#cnf(i_0_74, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),esk5_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_18352, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_18440, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_18507, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#################
#cnf(i_0_18457, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_18458, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_18398, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,esk5_2(X1,X2))|~main_query_0(X1,X2))).
####
#cnf(i_0_18473, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_18475, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
############
#cnf(i_0_18506, plain, (b(X1,esk3_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
################
#cnf(i_0_18437, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_19530, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#####
#cnf(i_0_19815, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
########
#cnf(i_0_18439, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_18929, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_20251, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
######################################
#cnf(i_0_18454, plain, (X1=X2|~lessthanorequal(esk3_2(X3,X2),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_18455, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk3_2(X3,X2))|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_18462, plain, (X1=X2|~lessthanorequal(esk3_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_18463, plain, (X1=X2|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_2449, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X4))|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
########
#cnf(i_0_3414, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
############
#cnf(i_0_762, plain, (esk3_2(esk3_2(X1,X2),X1)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_21558, plain, (esk3_2(X2,X1)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_21600, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
######
#cnf(i_0_21671, plain, (lessthanorequal(X1,esk3_2(X1,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
##############
#cnf(i_0_21636, plain, (lessthanorequal(esk3_2(X2,X1),esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
############
#cnf(i_0_22201, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#######
#cnf(i_0_21683, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X1,X3),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_21684, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##############
#cnf(i_0_21633, plain, (lessthanorequal(X1,esk3_2(X3,X2))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_21634, plain, (lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########################
#cnf(i_0_21637, plain, (a(X1,esk3_2(X2,X1),esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_21670, plain, (b(X1,esk3_2(X1,X2),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#################################################
#cnf(i_0_21614, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X1),X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
###
#cnf(i_0_21643, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#####
#cnf(i_0_21615, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X1))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
##########
#cnf(i_0_21622, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
##########
#cnf(i_0_21623, plain, (X1=X2|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_21681, plain, (X1=X2|~lessthanorequal(esk3_2(X2,X3),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
#########
#cnf(i_0_21682, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk3_2(X2,X3))|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_21685, plain, (X1=X2|~lessthanorequal(esk3_2(X1,X3),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#########
#cnf(i_0_21686, plain, (X1=X2|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
######
#cnf(i_0_22077, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X2,X1),X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_22112, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_22114, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_22330, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_22366, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#########
#cnf(i_0_23537, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_23539, plain, (X1=X2|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###########################################
#cnf(i_0_21597, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~lessthanorequal(X3,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_25368, plain, (esk3_2(X2,X1)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_25371, plain, (lessthanorequal(esk3_2(X2,X1),X1)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_26024, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
########
#cnf(i_0_25719, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_21599, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_843, plain, (esk5_2(X1,esk5_2(X2,X1))=esk5_2(X2,X1)|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
###
#cnf(i_0_26700, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_26746, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#######
#cnf(i_0_26827, plain, (esk5_2(X2,X1)=esk3_2(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
############################
#cnf(i_0_26829, plain, (b(X1,esk5_2(X1,X2),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###################
#cnf(i_0_26769, plain, (X1=X2|~lessthanorequal(esk5_2(X2,X3),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
#####
#cnf(i_0_26777, plain, (X1=X2|~lessthanorequal(esk5_2(X1,X3),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#############################################
#cnf(i_0_26755, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
##
#cnf(i_0_27358, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_27389, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_27966, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_27667, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#####
#cnf(i_0_26757, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
########
#cnf(i_0_5455, plain, (a(X1,X1,esk4_2(X1,esk5_2(X2,X1)))|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_28558, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
###
#cnf(i_0_5507, plain, (b(X1,X1,esk6_2(esk3_2(X1,X2),X1))|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_28676, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
###################
#cnf(i_0_16302, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_17819, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_17861, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X2,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_18006, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
################
#cnf(i_0_29080, plain, (X3=esk3_2(X2,X1)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_29276, plain, (X3=esk3_2(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X3,X2))).
########
#cnf(i_0_29278, plain, (X3=esk5_2(X2,X1)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####################
#cnf(i_0_29973, plain, (X3=esk5_2(X2,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X2,X3))).
########################################################################
#cnf(i_0_123, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
########
#cnf(i_0_142, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(esk5_2(X4,X1),X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_151, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_160, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
############
#cnf(i_0_1890, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
#
#cnf(i_0_34155, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###############
#cnf(i_0_34472, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_34477, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X1,X3))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_2012, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
###
#cnf(i_0_174, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X1)|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_175, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X1)|~lessthanorequal(X1,X2)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_184, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X4))|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(X3,X4))).
#######
#cnf(i_0_185, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X4))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
#####
#cnf(i_0_213, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_214, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_223, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
######
#cnf(i_0_224, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
######
#cnf(i_0_236, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(esk3_2(X3,X4),X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_2415, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X4,X1),X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
#####
#cnf(i_0_237, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X2)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_262, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_263, plain, (X1=X2|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_2548, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_278, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(X1,esk5_2(X3,X4))|~main_query_0(X3,X4))).
###
#cnf(i_0_279, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk5_2(X3,X4))|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_304, plain, (X1=X2|~lessthanorequal(X1,X4)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_305, plain, (X1=X2|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_808, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X4)|~lessthanorequal(X1,X2)|~lessthanorequal(X4,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_811, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X4,X1)|~main_query_0(X4,esk5_2(X3,X2))|~main_query_0(X3,X2))).
###
#cnf(i_0_812, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X4)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
###
#cnf(i_0_816, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X4,esk5_2(X3,X2))|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
##
#cnf(i_0_865, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X1,X3))|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(X1,X3))).
#######
#cnf(i_0_868, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X1,X3))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
#######
#cnf(i_0_869, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(esk3_2(X1,X3),X4)|~main_query_0(X1,X3))).
####
#cnf(i_0_873, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X1,X3),X4)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
##
#cnf(i_0_884, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_887, plain, (X1=X2|~lessthanorequal(X4,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_888, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
###
#cnf(i_0_892, plain, (X1=X2|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
##
#cnf(i_0_922, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#######
#cnf(i_0_925, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
#######
#cnf(i_0_926, plain, (X1=X2|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_930, plain, (X1=X2|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
#######
#cnf(i_0_12045, plain, (lessthanorequal(esk3_2(X1,X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_42892, plain, (lessthanorequal(esk3_2(X1,X2),X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
##
#cnf(i_0_12422, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_43540, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_19793, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_20529, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
########
#cnf(i_0_22329, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk3_2(X2,X1),X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####################
#cnf(i_0_22364, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####################
#cnf(i_0_25988, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_27942, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
############################################
#cnf(i_0_42903, plain, (lessthanorequal(esk3_2(X1,X2),X1)|~main_query_0(esk3_2(X3,X1),X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
########
#cnf(i_0_43555, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_43557, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_43560, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###########################################################
#cnf(i_0_5707, plain, (X1=X2|~lessthanorequal(esk5_2(X4,X1),X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X4,X1))).
#####
#cnf(i_0_19537, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_5747, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X2,X4))|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X4))).
######
#cnf(i_0_20268, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#####
#cnf(i_0_6063, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(esk3_2(X2,X4),X1)|~main_query_0(X2,X4))).
####
#cnf(i_0_6119, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~lessthanorequal(X4,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_6159, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~lessthanorequal(X4,X2)|~main_query_0(X4,X1)|~main_query_0(X1,X3))).
#####
#cnf(i_0_6387, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,esk5_2(X4,X1))|~main_query_0(X4,X1))).
####
#cnf(i_0_6435, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~lessthanorequal(X1,X4)|~main_query_0(X2,X4)|~main_query_0(X3,X2))).
####
#cnf(i_0_6475, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X4)|~main_query_0(X1,X3))).
#####
#cnf(i_0_6703, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~main_query_0(X4,X1)|~main_query_0(X2,X4)|~main_query_0(X3,X2))).
###
#cnf(i_0_6743, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~main_query_0(X4,X1)|~main_query_0(X2,X4)|~main_query_0(X1,X3))).
####
#cnf(i_0_6963, plain, (X1=X2|~lessthanorequal(X3,X1)|~main_query_0(esk3_2(X2,X4),X1)|~main_query_0(X3,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_7239, plain, (X1=X2|~lessthanorequal(X3,X1)|~main_query_0(X2,esk5_2(X4,X1))|~main_query_0(X3,X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_7279, plain, (X1=X2|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X4)|~main_query_0(X1,X3))).
####
#cnf(i_0_7499, plain, (X1=X2|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X4,X1)|~main_query_0(X2,X4)|~main_query_0(X1,X3))).
##
#cnf(i_0_7727, plain, (X1=X2|~lessthanorequal(X2,X3)|~main_query_0(X2,esk5_2(X4,X1))|~main_query_0(X1,X3)|~main_query_0(X4,X1))).
####
#cnf(i_0_7995, plain, (X1=X2|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X4,X1)|~main_query_0(X2,X4)|~main_query_0(X3,X2))).
##################################################################################################
#cnf(i_0_362, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X3,X4))).
########
#cnf(i_0_414, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_624, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
########
#cnf(i_0_693, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
############
#cnf(i_0_12192, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
######
#cnf(i_0_12194, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
##
#cnf(i_0_12546, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X4,X1))).
###
#cnf(i_0_14931, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#########
#cnf(i_0_12547, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X4,X1))).
##########
#cnf(i_0_769, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
######
#cnf(i_0_773, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_774, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X3))).
####
#cnf(i_0_775, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_16333, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#########
#cnf(i_0_777, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_17959, plain, (X1=esk5_2(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
######
#cnf(i_0_778, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_779, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
###
#cnf(i_0_780, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_847, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
######
#cnf(i_0_851, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_852, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X3))).
####
#cnf(i_0_853, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_18103, plain, (esk3_2(X1,X2)=X3|~main_query_0(X1,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#########
#cnf(i_0_855, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_856, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_857, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
####
#cnf(i_0_858, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###################################
#cnf(i_0_21629, plain, (esk3_2(X3,X2)=X1|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####################
#cnf(i_0_21630, plain, (esk3_2(X3,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X2))).
###########
#cnf(i_0_5477, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X1)|~main_query_0(X2,X1))).
#######
#cnf(i_0_5521, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X2)|~main_query_0(X2,X1))).
#######
#cnf(i_0_15615, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X4,X1)|~lessthanorequal(X3,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X1))).
###
#cnf(i_0_21631, plain, (esk3_2(X3,X2)=X1|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X3,X2))).
######
#cnf(i_0_15618, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X4,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X4,X3))).
###
#cnf(i_0_15619, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X4))).
##
#cnf(i_0_15623, plain, (esk5_2(X1,X2)=X2|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
##
#cnf(i_0_17060, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
####
#cnf(i_0_17063, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X4,X2))).
##
#cnf(i_0_17064, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X2,X4)|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_17068, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_21632, plain, (esk3_2(X3,X2)=X1|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X3,X2))).
#########
#cnf(i_0_25753, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X1)|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_25756, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X4,X3))).
#####
#cnf(i_0_27689, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_27693, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
##########################
#cnf(i_0_26820, plain, (esk5_2(X2,X1)=X3|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
############
#cnf(i_0_26821, plain, (esk5_2(X2,X1)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X2,X1))).
########
#cnf(i_0_26822, plain, (esk5_2(X2,X1)=X3|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X1))).
############
#cnf(i_0_26823, plain, (esk5_2(X2,X1)=X3|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X2,X1))).
#######################################
#cnf(i_0_30965, plain, (X1=esk3_2(X2,X3)|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_31875, plain, (X1=esk5_2(X2,X3)|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#####
#cnf(i_0_55004, plain, (X3=esk3_2(X2,X1)|~lessthanorequal(X3,X1)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
############
#cnf(i_0_58130, plain, (X3=esk5_2(X2,X1)|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
###################################################################
#cnf(i_0_349, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X1,X2),X4)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2))).
#####
#cnf(i_0_375, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X3))).
########
#cnf(i_0_428, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X4,esk3_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
#######
#cnf(i_0_470, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_485, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~main_query_0(X4,esk5_2(X1,X2))|~main_query_0(X1,X2))).
####
#cnf(i_0_529, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_575, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_qu