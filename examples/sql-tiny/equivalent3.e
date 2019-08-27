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
#cnf(i_0_71, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
##
#cnf(i_0_77, plain, (X1=X2|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#
#cnf(i_0_64, plain, (lessthanorequal(X2,esk5_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_70, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
##
#cnf(i_0_72, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_92, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
###
#cnf(i_0_65, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3))).
###
#cnf(i_0_67, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_79, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_90, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
##
#cnf(i_0_102, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_78, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
##
#cnf(i_0_89, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_103, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_40, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3))).
###
#cnf(i_0_14, plain, (a(X1,esk3_2(X1,X2),esk4_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_207, plain, (a(X1,X2,esk4_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_76, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_83, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X3)|~main_query_0(X1,X3))).
##
#cnf(i_0_26, plain, (a(X1,esk13_2(X1,X2),esk14_2(X1,X2))|~main_query_1(X1,X2))).
#
#cnf(i_0_259, plain, (a(X1,X2,esk14_2(X1,X2))|~main_query_1(X1,X2))).
##
#cnf(i_0_87, plain, (X1=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_96, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_11, plain, (b(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_298, plain, (b(X1,X2,esk6_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_100, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_23, plain, (b(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X2,X1))).
#
#cnf(i_0_312, plain, (b(X1,X2,esk16_2(X2,X1))|~main_query_1(X2,X1))).
#
#cnf(i_0_110, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
##
#cnf(i_0_114, plain, (X1=X2|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
#############
#cnf(i_0_39, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4))).
#####
#cnf(i_0_82, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X2,X4))).
###
#cnf(i_0_84, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4))).
###
#cnf(i_0_85, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_95, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3))).
##
#cnf(i_0_97, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_98, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
#####
#cnf(i_0_109, plain, (lessthanorequal(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
###############
#cnf(i_0_66, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,esk3_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_745, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
##
#cnf(i_0_770, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_786, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_75, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_80, plain, (esk5_2(X2,X1)=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_793, plain, (esk5_2(X1,X2)=X2|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#####
#cnf(i_0_801, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_175, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2))).
##
#cnf(i_0_821, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(esk5_2(X1,X2),X2)|~main_query_0(X1,X2))).
#
#cnf(i_0_822, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
#####
#cnf(i_0_183, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3))).
###
#cnf(i_0_214, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_61, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3))).
##
#cnf(i_0_222, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_240, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X3,X2))).
##
#cnf(i_0_266, plain, (X1=X2|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_274, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X1,X3))).
##
#cnf(i_0_300, plain, (X1=X2|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
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
#cnf(i_0_768, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_771, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_772, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_776, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
##
#cnf(i_0_846, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_849, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_850, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_854, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
##################
#cnf(i_0_936, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_1022, plain, (lessthanorequal(X1,X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
###
#cnf(i_0_1062, plain, (lessthanorequal(X1,X3)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_965, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_117, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_119, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_120, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
####
#cnf(i_0_121, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_124, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X3,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_125, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_134, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_136, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
###
#cnf(i_0_137, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X3,X1))).
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
#cnf(i_0_143, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3))).
####
#cnf(i_0_144, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_152, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
###
#cnf(i_0_153, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_155, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_164, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_165, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_156, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_161, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_162, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
#########################################
#cnf(i_0_176, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4))).
####
#cnf(i_0_178, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_179, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X4,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_180, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X2))).
####
#cnf(i_0_191, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X4))).
#####
#cnf(i_0_193, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X3)|~main_query_0(X1,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_215, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
####
#cnf(i_0_217, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_218, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_219, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X1))).
####
#cnf(i_0_230, plain, (X1=X2|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
#####
#cnf(i_0_232, plain, (X1=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
#####
#cnf(i_0_244, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
##
#cnf(i_0_245, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X2))).
####
#cnf(i_0_270, plain, (X1=X2|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
##
#cnf(i_0_271, plain, (X1=X2|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1))).
#############
#cnf(i_0_767, plain, (esk3_2(X1,esk5_2(X2,X1))=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
##
#cnf(i_0_5466, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
######
#cnf(i_0_840, plain, (esk5_2(esk3_2(X1,X2),X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
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
#cnf(i_0_1073, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1077, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_1(X2,X1))).
####
#cnf(i_0_1079, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_0(X2,X1))).
#
#cnf(i_0_196, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,esk3_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_1095, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
#
#cnf(i_0_8480, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
#
#cnf(i_0_201, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(esk5_2(X2,X1),X3)|~lessthanorequal(X3,X1)|~main_query_0(X2,X1))).
###
#cnf(i_0_248, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_253, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(esk5_2(X2,X1),X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
###
#cnf(i_0_287, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,esk3_2(X1,X2))|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_292, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(X3,X1)|~main_query_0(X3,esk5_2(X2,X1))|~main_query_0(X2,X1))).
##
#cnf(i_0_314, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_319, plain, (esk5_2(X2,X1)=X1|~main_query_0(X3,esk5_2(X2,X1))|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
###
#cnf(i_0_1158, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_1197, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_1236, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
###
#cnf(i_0_1111, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_1127, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_1258, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X1))).
#
#cnf(i_0_9160, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X2,X1)|~main_query_0(X2,X1))).
#
#cnf(i_0_1174, plain, (esk3_2(X1,X2)=X1|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_1323, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_1205, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_1364, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#
#cnf(i_0_1269, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_1285, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_1334, plain, (esk5_2(X1,X2)=X2|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_1405, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
#
#cnf(i_0_1367, plain, (esk5_2(X1,X2)=X2|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_5467, plain, (esk3_2(X1,X1)=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_9671, plain, (esk3_2(X1,X1)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#######
#cnf(i_0_5512, plain, (esk5_2(X1,X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#
#cnf(i_0_9734, plain, (esk5_2(X1,X1)=X1|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
##################
#cnf(i_0_327, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~lessthanorequal(X5,X2)|~lessthanorequal(X4,X5))).
#####
#cnf(i_0_328, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~lessthanorequal(X5,X2)|~lessthanorequal(X4,X5)|~main_query_0(X3,X1))).
######
#cnf(i_0_334, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~lessthanorequal(X5,X3)|~lessthanorequal(X4,X5)|~main_query_0(X2,X3))).
#####
#cnf(i_0_358, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X5)|~main_query_0(X4,X5))).
####
#cnf(i_0_359, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X5,X4)|~main_query_0(X5,X3))).
####
#cnf(i_0_360, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X4,X5)|~main_query_0(X5,X3))).
#######
#cnf(i_0_373, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X2,X5)|~main_query_0(X5,X4))).
########
#cnf(i_0_386, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X5)|~main_query_0(X5,X1))).
#####
#cnf(i_0_391, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~lessthanorequal(X4,X5)|~main_query_0(X3,X1)|~main_query_0(X2,X5))).
########
#cnf(i_0_425, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X5,X4)|~main_query_0(X2,X4)|~main_query_0(X5,X3))).
###
#cnf(i_0_426, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X5)|~main_query_0(X5,X3))).
######
#cnf(i_0_440, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X2,X4)|~main_query_0(X3,X5)|~main_query_0(X5,X1))).
###
#cnf(i_0_445, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X5)|~main_query_0(X3,X1)|~main_query_0(X4,X5))).
######
#cnf(i_0_116, plain, (lessthanorequal(esk3_2(esk3_2(X1,X2),X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_13632, plain, (lessthanorequal(esk3_2(X2,X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_133, plain, (lessthanorequal(X1,esk5_2(X2,esk5_2(X3,X1)))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
##
#cnf(i_0_14030, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
####
#cnf(i_0_483, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X5)|~main_query_0(X5,X1))).
#######
#cnf(i_0_503, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X5)|~main_query_0(X5,X4))).
#######
#cnf(i_0_543, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3)|~main_query_0(X3,X5)|~main_query_0(X5,X1))).
###########################################################################################
#cnf(i_0_126, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X2,X1)|~main_query_0(X2,X3))).
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
#cnf(i_0_15592, plain, (esk5_2(X1,X2)=X2|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
###################
#cnf(i_0_130, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_145, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2))).
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
#cnf(i_0_17056, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
###################
#cnf(i_0_149, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X2,X3))).
##
#cnf(i_0_154, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_158, plain, (esk3_2(X1,X2)=X3|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_163, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_167, plain, (X1=esk5_2(X2,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##############
#cnf(i_0_1558, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),esk3_2(X2,X4))|~main_query_0(X2,X4)|~main_query_0(X3,X1))).
###
#cnf(i_0_1668, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X4),esk5_2(X3,X1))|~main_query_0(X2,X4)|~main_query_0(X3,X1))).
######
#cnf(i_0_74, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),esk5_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_18349, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_18437, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_18504, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#################
#cnf(i_0_18465, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_18466, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_18395, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,esk5_2(X1,X2))|~main_query_0(X1,X2))).
####
#cnf(i_0_18452, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_18454, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
############
#cnf(i_0_18503, plain, (b(X1,esk3_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
################
#cnf(i_0_18434, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_19527, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#####
#cnf(i_0_19813, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
########
#cnf(i_0_18436, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_18926, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_20248, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
######################################
#cnf(i_0_18448, plain, (X1=X2|~lessthanorequal(esk3_2(X3,X2),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_18449, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk3_2(X3,X2))|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_18470, plain, (X1=X2|~lessthanorequal(esk3_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_18471, plain, (X1=X2|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_2453, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X4))|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
########
#cnf(i_0_3423, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
############
#cnf(i_0_762, plain, (esk3_2(esk3_2(X1,X2),X1)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
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
#cnf(i_0_21623, plain, (lessthanorequal(X1,esk3_2(X3,X2))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_21624, plain, (lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########################
#cnf(i_0_21634, plain, (a(X1,esk3_2(X2,X1),esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_21667, plain, (b(X1,esk3_2(X1,X2),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#################################################
#cnf(i_0_21612, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
##########
#cnf(i_0_21613, plain, (X1=X2|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_21629, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X1))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
##########
#cnf(i_0_21640, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#####
#cnf(i_0_21630, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X1),X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
####
#cnf(i_0_21678, plain, (X1=X2|~lessthanorequal(esk3_2(X2,X3),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
#########
#cnf(i_0_21679, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk3_2(X2,X3))|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_21682, plain, (X1=X2|~lessthanorequal(esk3_2(X1,X3),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#########
#cnf(i_0_21683, plain, (X1=X2|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
######
#cnf(i_0_21996, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_21998, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_22025, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X2,X1),X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_22248, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_22278, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#################
#cnf(i_0_23750, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_23752, plain, (X1=X2|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###################################
#cnf(i_0_21594, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~lessthanorequal(X3,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_25365, plain, (esk3_2(X2,X1)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_25368, plain, (lessthanorequal(esk3_2(X2,X1),X1)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_26022, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
########
#cnf(i_0_25716, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_21596, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_845, plain, (esk5_2(X1,esk5_2(X2,X1))=esk5_2(X2,X1)|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
###
#cnf(i_0_26697, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_26743, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#######
#cnf(i_0_26824, plain, (esk5_2(X2,X1)=esk3_2(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
############################
#cnf(i_0_26826, plain, (b(X1,esk5_2(X1,X2),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###################
#cnf(i_0_26761, plain, (X1=X2|~lessthanorequal(esk5_2(X2,X3),X1)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
#######
#cnf(i_0_26786, plain, (X1=X2|~lessthanorequal(esk5_2(X1,X3),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###########################################
#cnf(i_0_26752, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
##
#cnf(i_0_27355, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_27386, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_27964, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_27675, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
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
#cnf(i_0_1894, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
#
#cnf(i_0_34152, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###############
#cnf(i_0_34469, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_34474, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X1,X3))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_2016, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
###
#cnf(i_0_173, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X1)|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_174, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X1)|~lessthanorequal(X1,X2)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_184, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X4))|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(X3,X4))).
#######
#cnf(i_0_185, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X4))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
#####
#cnf(i_0_212, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_213, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_223, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
######
#cnf(i_0_224, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
######
#cnf(i_0_238, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(X1,esk5_2(X3,X4))|~main_query_0(X3,X4))).
###
#cnf(i_0_2419, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X4,X1),X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
#####
#cnf(i_0_239, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,esk5_2(X3,X4))|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
##
#cnf(i_0_264, plain, (X1=X2|~lessthanorequal(X1,X4)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_265, plain, (X1=X2|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_2552, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_275, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X3,X1)|~main_query_0(esk3_2(X3,X4),X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_276, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X2)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
###
#cnf(i_0_301, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_302, plain, (X1=X2|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_808, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X4)|~lessthanorequal(X1,X2)|~lessthanorequal(X4,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_811, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X4)|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
###
#cnf(i_0_812, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X4,X1)|~main_query_0(X4,esk5_2(X3,X2))|~main_query_0(X3,X2))).
###
#cnf(i_0_816, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(X4,esk5_2(X3,X2))|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
##
#cnf(i_0_865, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X1,X3))|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(X1,X3))).
#######
#cnf(i_0_868, plain, (X1=X2|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X4)|~main_query_0(esk3_2(X1,X3),X4)|~main_query_0(X1,X3))).
###
#cnf(i_0_869, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X1,X3))|~lessthanorequal(X1,X2)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
######
#cnf(i_0_873, plain, (X1=X2|~lessthanorequal(X1,X2)|~main_query_0(esk3_2(X1,X3),X4)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
##
#cnf(i_0_884, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_887, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
####
#cnf(i_0_888, plain, (X1=X2|~lessthanorequal(X4,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_892, plain, (X1=X2|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
##
#cnf(i_0_942, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#######
#cnf(i_0_945, plain, (X1=X2|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_946, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
######
#cnf(i_0_950, plain, (X1=X2|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
#################
#cnf(i_0_13634, plain, (lessthanorequal(esk3_2(X1,X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_42889, plain, (lessthanorequal(esk3_2(X1,X2),X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
##
#cnf(i_0_14031, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_43537, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_19790, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_20535, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
########
#cnf(i_0_22246, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####################
#cnf(i_0_22276, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk3_2(X2,X1),X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####################
#cnf(i_0_25985, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_27950, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
############################################
#cnf(i_0_42900, plain, (lessthanorequal(esk3_2(X1,X2),X1)|~main_query_0(esk3_2(X3,X1),X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
########
#cnf(i_0_43552, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_43554, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_43557, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#################################################
#cnf(i_0_5712, plain, (X1=X2|~lessthanorequal(esk5_2(X4,X1),X2)|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X4,X1))).
#####
#cnf(i_0_5744, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X2,X4))|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X4))).
#########
#cnf(i_0_6076, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,esk5_2(X4,X1))|~main_query_0(X4,X1))).
####
#cnf(i_0_6124, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~lessthanorequal(X1,X4)|~main_query_0(X2,X4)|~main_query_0(X3,X2))).
####
#cnf(i_0_6156, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X4)|~main_query_0(X1,X3))).
######
#cnf(i_0_6376, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(esk3_2(X2,X4),X1)|~main_query_0(X2,X4))).
####
#cnf(i_0_6440, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~lessthanorequal(X4,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_6472, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~lessthanorequal(X4,X2)|~main_query_0(X4,X1)|~main_query_0(X1,X3))).
#####
#cnf(i_0_6708, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~main_query_0(X2,X4)|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_6740, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~main_query_0(X2,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_6976, plain, (X1=X2|~lessthanorequal(X2,X3)|~main_query_0(X2,esk5_2(X4,X1))|~main_query_0(X1,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_19534, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_7228, plain, (X1=X2|~lessthanorequal(X2,X3)|~main_query_0(esk3_2(X2,X4),X1)|~main_query_0(X1,X3)|~main_query_0(X2,X4))).
###
#cnf(i_0_7292, plain, (X1=X2|~lessthanorequal(X4,X2)|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_7512, plain, (X1=X2|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X4)|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
##
#cnf(i_0_7716, plain, (X1=X2|~lessthanorequal(X3,X1)|~main_query_0(esk3_2(X2,X4),X1)|~main_query_0(X3,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_7984, plain, (X1=X2|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X3))).
#####
#cnf(i_0_20274, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##############################################################################################
#cnf(i_0_349, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X3,X4))).
########
#cnf(i_0_414, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
#######
#cnf(i_0_624, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_693, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4))).
############
#cnf(i_0_13679, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
######
#cnf(i_0_13681, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
##
#cnf(i_0_14102, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X4,X1))).
####
#cnf(i_0_14104, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X4,X1))).
##########
#cnf(i_0_769, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2))).
######
#cnf(i_0_773, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_774, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_775, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_14928, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X2)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#########
#cnf(i_0_777, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_778, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_779, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X3,X1))).
####
#cnf(i_0_780, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
##
#cnf(i_0_847, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2))).
######
#cnf(i_0_851, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_852, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_853, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_16330, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#########
#cnf(i_0_855, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_17960, plain, (esk3_2(X1,X2)=X3|~main_query_0(X1,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#########
#cnf(i_0_856, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_857, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X3,X1))).
####
#cnf(i_0_858, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
#######
#cnf(i_0_18095, plain, (X1=esk5_2(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
############################################
#cnf(i_0_21619, plain, (esk3_2(X3,X2)=X1|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###############
#cnf(i_0_5474, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X1)|~main_query_0(X2,X1))).
#######
#cnf(i_0_5518, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X2)|~main_query_0(X2,X1))).
######
#cnf(i_0_21620, plain, (esk3_2(X3,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X2))).
######
#cnf(i_0_15612, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X4,X1)|~lessthanorequal(X3,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X1))).
###
#cnf(i_0_15616, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X4))).
##
#cnf(i_0_15617, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X4,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X4,X3))).
##
#cnf(i_0_15621, plain, (esk5_2(X1,X2)=X2|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X4)|~main_query_0(X4,X3))).
#
#cnf(i_0_17057, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
###
#cnf(i_0_17061, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X2,X4)|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_17062, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X4,X2))).
##
#cnf(i_0_17066, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X2))).
######
#cnf(i_0_25750, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X1)|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_25755, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X4,X3))).
###
#cnf(i_0_27686, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_27690, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
###########
#cnf(i_0_21621, plain, (esk3_2(X3,X2)=X1|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X3,X2))).
####################
#cnf(i_0_21622, plain, (esk3_2(X3,X2)=X1|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X3,X2))).
############################################
#cnf(i_0_26817, plain, (esk5_2(X2,X1)=X3|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
############
#cnf(i_0_26818, plain, (esk5_2(X2,X1)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X2,X1))).
########
#cnf(i_0_26819, plain, (esk5_2(X2,X1)=X3|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X1))).
#####
#cnf(i_0_26820, plain, (esk5_2(X2,X1)=X3|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X2,X1))).
##################
#cnf(i_0_30963, plain, (X1=esk3_2(X2,X3)|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_31873, plain, (X1=esk5_2(X2,X3)|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#####
#cnf(i_0_57032, plain, (X3=esk3_2(X2,X1)|~lessthanorequal(X3,X1)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
############
#cnf(i_0_60742, plain, (X3=esk5_2(X2,X1)|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
###################################################################
#cnf(i_0_362, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X3))).
########
#cnf(i_0_375, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X1,X2),X4)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2))).
#####
#cnf(i_0_428, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X1,X2),X4)|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
####
#cnf(i_0_470, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~main_query_0(X4,esk5_2(X1,X2))|~main_query_0(X1,X2))).
####
#cnf(i_0_485, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_529, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X4,esk5_2(X1,X2))|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
###
#cnf(i_0_575, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_642, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X4,esk3_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
#################
#cnf(i_0_13703, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~main_query_0(esk3_2(X4,X1),X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_13705, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(esk3_2(X4,X1),X2)|~main_query_0(X3,X4)|~main_query_0(X4,X1))).
##
#cnf(i_0_14078, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
###
#cnf(i_0_14080, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_25366, plain, (lessthanorequal(esk3_2(X2,X1),esk5_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_26430, plain, (lessthanorequal(esk3_2(X2,X1),esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_27356, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X2,X1))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_28395, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X2,X1))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
######
#cnf(i_0_15187, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X1)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3))).
#######
#cnf(i_0_15191, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X1,X4))).
#####
#cnf(i_0_15192, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
#####
#cnf(i_0_15196, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X4)|~main_query_0(X4,X2))).
####
#cnf(i_0_15255, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3))).
#######
#cnf(i_0_15259, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
#######
#cnf(i_0_15260, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
######
#cnf(i_0_15264, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1))).
#####
#cnf(i_0_15502, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
#######
#cnf(i_0_15506, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
######
#cnf(i_0_15507, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
######
#cnf(i_0_15511, plain, (X1=esk3_2(X2,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X1))).
#####
#cnf(i_0_15905, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X4,X1)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
#####
#cnf(i_0_15909, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
####
#cnf(i_0_15910, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X4,X2))).
####
#cnf(i_0_15914, plain, (X1=esk3_2(X2,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X4)|~main_query_0(X4,X2))).
###
#cnf(i_0_16610, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2))).
######
#cnf(i_0_16614, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
#####
#cnf(i_0_16615, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X3))).
#####
#cnf(i_0_16619, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_16678, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
#######
#cnf(i_0_16682, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
######
#cnf(i_0_16683, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
######
#cnf(i_0_16687, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X1))).
#####
#cnf(i_0_16942, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#######
#cnf(i_0_16946, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
######
#cnf(i_0_16947, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
######
#cnf(i_0_16951, plain, (esk5_2(X1,X2)=X3|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1))).
#####
#cnf(i_0_17372, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#####
#cnf(i_0_17376, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
####
#cnf(i_0_17377, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3))).
####
#cnf(i_0_17381, plain, (esk5_2(X1,X2)=X3|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
###################################################
#cnf(i_0_1100, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2))).
####
#cnf(i_0_1163, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,X4)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_1202, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_1241, plain, (lessthanorequal(X1,X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X1))).
##
#cnf(i_0_1245, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3))).
#####
#cnf(i_0_1247, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_1310, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_1312, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
###
#cnf(i_0_1351, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_1353, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X4,X3)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
###
#cnf(i_0_1392, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X2))).
###
#cnf(i_0_1255, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
###
#cnf(i_0_1394, plain, (lessthanorequal(X1,X3)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X2))).
#####
#cnf(i_0_1320, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_1361, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_1402, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X1))).
###
#cnf(i_0_19487, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X2)|~lessthanorequal(X4,X1)|~main_query_0(X3,X1)|~main_query_0(X4,X3))).
#######
#cnf(i_0_19488, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X1)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X4,X3))).
#####
#cnf(i_0_19942, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
######
#cnf(i_0_19944, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
###
#cnf(i_0_8403, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_8434, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_20208, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
#######
#cnf(i_0_20209, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
######
#cnf(i_0_8841, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_8892, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_25331, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X2))|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_25332, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_26128, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_26130, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
##
#cnf(i_0_9130, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(esk5_2(X3,X2),X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_27338, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X1,X3),X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
###
#cnf(i_0_27339, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
##
#cnf(i_0_9161, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X2,esk3_2(X1,X3))|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_28112, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X1,X3),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X4)|~main_query_0(X4,X3))).
##
#cnf(i_0_28114, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_9296, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_9377, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
########################
#cnf(i_0_18455, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_18456, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_18458, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_18459, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_18462, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,esk3_2(X4,X1))|~main_query_0(X4,X1)|~main_query_0(X1,X4))).
####
#cnf(i_0_18463, plain, (lessthanorequal(X1,X2)|~main_query_0(X3,esk3_2(X4,X1))|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X1,X4))).
####
#cnf(i_0_18468, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X4)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_18469, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X1,X3))).
############
#cnf(i_0_18477, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X4),X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
############
#cnf(i_0_18478, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X4),X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
############
#cnf(i_0_18479, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_18507, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,esk3_2(X4,X3))|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
#########################################
#cnf(i_0_21609, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X2),X4)|~main_query_0(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_21625, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X4,X3))|~lessthanorequal(X3,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
############
#cnf(i_0_21626, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X4,X3),X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_21627, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X4,X3))|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
###########
#cnf(i_0_19474, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_19476, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
#####
#cnf(i_0_21628, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X4,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_21673, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,esk3_2(X4,X2))|~lessthanorequal(X1,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X2))).
#############
#cnf(i_0_21674, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X4,X2),X3)|~main_query_0(X2,X4)|~main_query_0(X4,X2))).
####
#cnf(i_0_21675, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,esk3_2(X4,X2))|~main_query_0(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X4,X2))).
##############
#cnf(i_0_19913, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_19915, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###########
#cnf(i_0_21811, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X1,X3),X4)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#########
#cnf(i_0_20195, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_20197, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
######
#cnf(i_0_21813, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X1,X3),X4)|~main_query_0(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###########
#cnf(i_0_21815, plain, (lessthanorequal(X1,X2)|~main_query_0(X4,esk3_2(X1,X3))|~main_query_0(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_21856, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X4),X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
#########
#cnf(i_0_21866, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X4),X2)|~lessthanorequal(X1,X3)|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
#########
#cnf(i_0_21867, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,esk3_2(X3,X4))|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_21868, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X4))|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
###
#cnf(i_0_21904, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,esk3_2(X1,X4))|~main_query_0(X4,X1)|~main_query_0(X1,X4))).
####################
#cnf(i_0_26778, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,esk5_2(X1,X4))|~main_query_0(X4,X1)|~main_query_0(X1,X4))).
####
#cnf(i_0_26779, plain, (lessthanorequal(X1,X2)|~main_query_0(X3,esk5_2(X1,X4))|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X1,X4))).
###
#cnf(i_0_26784, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X1,X3),X4)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#####
#cnf(i_0_26785, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X1,X3),X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X1,X3))).
####
#cnf(i_0_26793, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X4,X3),X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
#####
#cnf(i_0_26794, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X4,X3),X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_26795, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X4,X3))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_26834, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
######
#cnf(i_0_21643, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_21644, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_21646, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_21647, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
################################################
#cnf(i_0_21785, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_21786, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X2,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_21787, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_21880, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
################################################################################
#cnf(i_0_25370, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_25374, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####################################################
#cnf(i_0_26158, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X4,X2)|~main_query_0(X1,X4))).
####
#cnf(i_0_26160, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X4,X2)|~main_query_0(X1,X4))).
########################################
#cnf(i_0_26768, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_26769, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_26771, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_26772, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####################################
#cnf(i_0_27321, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_27323, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####################################
#cnf(i_0_28083, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_28085, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
####################
#cnf(i_0_28556, plain, (a(X1,X1,esk4_2(X1,X1))|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_168380, plain, (a(X1,X1,esk4_2(X1,X1))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
###
#cnf(i_0_28675, plain, (b(X1,X1,esk6_2(X1,X1))|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#
#cnf(i_0_168666, plain, (b(X1,X1,esk6_2(X1,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
##############################################################################################################################################################################################################################
#cnf(i_0_42990, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X4,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X2))).
##
#cnf(i_0_42992, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X4,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X2))).
#
#cnf(i_0_43692, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X4))).
###
#cnf(i_0_43694, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X4))).
####
#cnf(i_0_325, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X5,X2)|~lessthanorequal(X4,X5)|~main_query_0(X3,X1))).
#####
#cnf(i_0_326, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X5,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X5)|~main_query_0(X2,X3))).
########
#cnf(i_0_351, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X5,X2)|~lessthanorequal(X3,X5)|~main_query_0(X3,X4))).
########
#cnf(i_0_352, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X5,X2)|~main_query_0(X5,X3)|~main_query_0(X3,X4))).
#######
#cnf(i_0_353, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X4,X5),X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X5)|~main_query_0(X4,X5))).
#####
#cnf(i_0_354, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X4,X5),X2)|~lessthanorequal(X1,X3)|~main_query_0(X5,X3)|~main_query_0(X4,X5))).
####
#cnf(i_0_364, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,esk3_2(X4,X5))|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X4,X5))).
########
#cnf(i_0_365, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,esk3_2(X4,X5))|~lessthanorequal(X1,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X5))).
#######
#cnf(i_0_379, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X5)|~lessthanorequal(X5,X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4))).
#####
#cnf(i_0_380, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X5)|~lessthanorequal(X5,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_388, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X4,X5)|~main_query_0(X3,X1)|~main_query_0(X2,X5))).
####
#cnf(i_0_389, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X5)|~main_query_0(esk3_2(