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
#cnf(i_0_71, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(X2,X1))).
##
#cnf(i_0_77, plain, (X1=X2|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_64, plain, (lessthanorequal(X2,esk5_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_70, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_72, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
##
#cnf(i_0_93, plain, (lessthanorequal(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_67, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3))).
###
#cnf(i_0_65, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_78, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_89, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_103, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
####
#cnf(i_0_79, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
##
#cnf(i_0_90, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_102, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_40, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3))).
###
#cnf(i_0_14, plain, (a(X1,esk3_2(X1,X2),esk4_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_207, plain, (a(X1,X2,esk4_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_76, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X1))).
###
#cnf(i_0_83, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_26, plain, (a(X1,esk13_2(X1,X2),esk14_2(X1,X2))|~main_query_1(X1,X2))).
#
#cnf(i_0_259, plain, (a(X1,X2,esk14_2(X1,X2))|~main_query_1(X1,X2))).
##
#cnf(i_0_87, plain, (X1=X2|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
##
#cnf(i_0_96, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
###
#cnf(i_0_11, plain, (b(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_298, plain, (b(X1,X2,esk6_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_100, plain, (X1=X2|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_23, plain, (b(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X2,X1))).
#
#cnf(i_0_312, plain, (b(X1,X2,esk16_2(X2,X1))|~main_query_1(X2,X1))).
#
#cnf(i_0_110, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_114, plain, (X1=X2|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
#############
#cnf(i_0_39, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4))).
#####
#cnf(i_0_82, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_84, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X4,X3))).
###
#cnf(i_0_85, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3))).
####
#cnf(i_0_95, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_97, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X2,X4))).
###
#cnf(i_0_98, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
#####
#cnf(i_0_109, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###############
#cnf(i_0_66, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,esk3_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_745, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
##
#cnf(i_0_771, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_786, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_75, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_80, plain, (esk5_2(X1,X2)=X2|~main_query_0(X2,esk5_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_793, plain, (esk5_2(X1,X2)=X2|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#####
#cnf(i_0_799, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_175, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~lessthanorequal(X2,X1)|~main_query_0(X3,X1))).
##
#cnf(i_0_808, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(esk5_2(X2,X1),X1)|~main_query_0(X2,X1))).
#
#cnf(i_0_822, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
#####
#cnf(i_0_185, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X2,X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_214, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_61, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_224, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X3))|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_237, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_62, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3))).
##
#cnf(i_0_263, plain, (X1=X2|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_88, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_279, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
##
#cnf(i_0_101, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_305, plain, (X1=X2|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
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
#cnf(i_0_769, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_772, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_773, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_777, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_847, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_850, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_851, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_855, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##################
#cnf(i_0_977, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_1019, plain, (lessthanorequal(X1,X3)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_1060, plain, (lessthanorequal(X1,X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
###
#cnf(i_0_899, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_118, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_120, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
####
#cnf(i_0_121, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_122, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
###
#cnf(i_0_127, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X3,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_128, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_135, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_137, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X3,X1))).
###
#cnf(i_0_138, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
###
#cnf(i_0_124, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
####
#cnf(i_0_125, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
###
#cnf(i_0_139, plain, (lessthanorequal(X1,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
##
#cnf(i_0_143, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_144, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
###
#cnf(i_0_146, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3))).
####
#cnf(i_0_147, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_152, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_153, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_155, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
###
#cnf(i_0_164, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
###
#cnf(i_0_165, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_156, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_161, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_162, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
#########################################
#cnf(i_0_177, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4))).
####
#cnf(i_0_179, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1))).
####
#cnf(i_0_180, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_181, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
#####
#cnf(i_0_193, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X2,X4))).
###
#cnf(i_0_194, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X3)|~main_query_0(X4,X3)|~main_query_0(X2,X4))).
##
#cnf(i_0_216, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X1))).
####
#cnf(i_0_218, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X4,X3)|~main_query_0(X2,X1)|~main_query_0(X4,X2))).
###
#cnf(i_0_219, plain, (X1=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_220, plain, (X1=X2|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
#####
#cnf(i_0_232, plain, (X1=X2|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X4))).
###
#cnf(i_0_233, plain, (X1=X2|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
#####
#cnf(i_0_245, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
###
#cnf(i_0_246, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X2,X4))).
####
#cnf(i_0_271, plain, (X1=X2|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
##
#cnf(i_0_272, plain, (X1=X2|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
#############################
#cnf(i_0_767, plain, (esk3_2(X1,esk5_2(X2,X1))=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
##
#cnf(i_0_5469, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
######
#cnf(i_0_842, plain, (esk5_2(esk3_2(X1,X2),X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_5513, plain, (esk5_2(X2,X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#####################################################
#cnf(i_0_202, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X1)|~lessthanorequal(X2,X4))).
#####
#cnf(i_0_204, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X1)|~main_query_0(X4,X2))).
####
#cnf(i_0_205, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(X1,X4))).
####
#cnf(i_0_206, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X4,X2)|~main_query_0(X1,X4))).
####
#cnf(i_0_256, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X1)|~main_query_0(X3,X1)|~main_query_0(X4,X2))).
###
#cnf(i_0_257, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
###
#cnf(i_0_258, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(X3,X1)|~main_query_0(X4,X2)|~main_query_0(X1,X4))).
####
#cnf(i_0_296, plain, (X1=X2|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X1,X4))).
###
#cnf(i_0_297, plain, (X1=X2|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X1,X4))).
#####
#cnf(i_0_324, plain, (X1=X2|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X1,X4))).
######################
#cnf(i_0_1065, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_0(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1066, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X2,X1)|~main_query_0(X3,X4)|~main_query_0(X5,X6))).
####
#cnf(i_0_1072, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1073, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X2,X1)|~main_query_0(X5,X6))).
####
#cnf(i_0_1078, plain, (a(X1,X2,esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1079, plain, (a(X1,X2,esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_1(X2,X1))).
#
#cnf(i_0_198, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,esk3_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_1095, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
#
#cnf(i_0_8454, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X1,X2)|~main_query_0(X1,X2))).
#
#cnf(i_0_201, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2))).
###
#cnf(i_0_250, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,esk3_2(X1,X2))|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_1158, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_253, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_1197, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#
#cnf(i_0_289, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_292, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_316, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
##
#cnf(i_0_1236, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#
#cnf(i_0_319, plain, (esk5_2(X1,X2)=X2|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_1254, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X1))).
#
#cnf(i_0_9003, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X2,X1)|~main_query_0(X2,X1))).
###
#cnf(i_0_1319, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_1360, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_1401, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
#
#cnf(i_0_1111, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_1130, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_1169, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_1213, plain, (esk3_2(X1,X2)=X1|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_1269, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_1288, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_1329, plain, (esk5_2(X1,X2)=X2|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_1375, plain, (esk5_2(X1,X2)=X2|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_5470, plain, (esk3_2(X1,X1)=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_9674, plain, (esk3_2(X1,X1)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_5515, plain, (esk5_2(X1,X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#
#cnf(i_0_9737, plain, (esk5_2(X1,X1)=X1|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###################
#cnf(i_0_331, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~lessthanorequal(X1,X5))).
#####
#cnf(i_0_333, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~lessthanorequal(X1,X5)|~main_query_0(X2,X3))).
######
#cnf(i_0_341, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~lessthanorequal(X5,X4)|~lessthanorequal(X3,X5)|~main_query_0(X3,X1))).
######
#cnf(i_0_360, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X5)|~main_query_0(X4,X5))).
####
#cnf(i_0_361, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X5,X1)|~main_query_0(X4,X5))).
######
#cnf(i_0_373, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X5)|~main_query_0(X3,X5))).
####
#cnf(i_0_374, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X5,X4)|~main_query_0(X3,X5))).
#######
#cnf(i_0_116, plain, (lessthanorequal(esk3_2(esk3_2(X1,X2),X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_12043, plain, (lessthanorequal(esk3_2(X2,X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_133, plain, (lessthanorequal(X1,esk5_2(X2,esk5_2(X3,X1)))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
##
#cnf(i_0_12421, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
##
#cnf(i_0_387, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X5,X3)|~main_query_0(X2,X5))).
####
#cnf(i_0_397, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~main_query_0(X2,X3)|~main_query_0(X5,X1))).
#######
#cnf(i_0_426, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X5)|~main_query_0(X4,X1)|~main_query_0(X3,X5))).
###
#cnf(i_0_427, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X4,X1)|~main_query_0(X5,X4)|~main_query_0(X3,X5))).
#####
#cnf(i_0_441, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X5,X3)|~main_query_0(X2,X5))).
###
#cnf(i_0_451, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~lessthanorequal(X5,X3)|~main_query_0(X2,X3)|~main_query_0(X5,X4))).
########
#cnf(i_0_484, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X4,X3)|~main_query_0(X5,X4)|~main_query_0(X2,X5))).
#######
#cnf(i_0_509, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X5,X1)|~main_query_0(X4,X5))).
#######
#cnf(i_0_544, plain, (lessthanorequal(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X5,X3)|~main_query_0(X2,X5))).
###########################################################################################
#cnf(i_0_126, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,esk3_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
#
#cnf(i_0_14929, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
######
#cnf(i_0_15193, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#####
#cnf(i_0_15474, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_15618, plain, (esk5_2(X1,X2)=X2|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
#
#cnf(i_0_15261, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#####
#cnf(i_0_15508, plain, (esk3_2(X1,X2)=X3|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#############
#cnf(i_0_15135, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_15449, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#
#cnf(i_0_15851, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#
#cnf(i_0_16103, plain, (a(X1,X3,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#
#cnf(i_0_15603, plain, (esk5_2(X1,X2)=X2|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
###################
#cnf(i_0_130, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X2,X1)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
##
#cnf(i_0_145, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(esk5_2(X2,X3),X1)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
#
#cnf(i_0_16332, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3))).
######
#cnf(i_0_16616, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
#####
#cnf(i_0_16767, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
##
#cnf(i_0_17063, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#
#cnf(i_0_16684, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
######
#cnf(i_0_16948, plain, (X1=esk5_2(X2,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###########
#cnf(i_0_16433, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X1)|~main_query_0(X2,X1))).
####
#cnf(i_0_16764, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_17191, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#
#cnf(i_0_17460, plain, (b(X1,X3,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
#
#cnf(i_0_17059, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
###################
#cnf(i_0_149, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2))).
##
#cnf(i_0_154, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(esk5_2(X2,X3),X1)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_158, plain, (esk5_2(X1,X2)=X3|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
##
#cnf(i_0_163, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,esk3_2(X1,X2))|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_167, plain, (X1=esk3_2(X2,X3)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##############
#cnf(i_0_1558, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),esk3_2(X2,X4))|~main_query_0(X2,X4)|~main_query_0(X3,X1))).
###
#cnf(i_0_1749, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X4),esk5_2(X3,X1))|~main_query_0(X2,X4)|~main_query_0(X3,X1))).
######
#cnf(i_0_74, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),esk5_2(X1,X2))|~main_query_0(X1,X2))).
#
#cnf(i_0_18356, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_18436, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_18495, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#################
#cnf(i_0_18498, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_18499, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_18394, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,esk5_2(X1,X2))|~main_query_0(X1,X2))).
####
#cnf(i_0_18458, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_18460, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
############
#cnf(i_0_18494, plain, (b(X1,esk3_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
################
#cnf(i_0_18443, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_19518, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#####
#cnf(i_0_19815, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
########
#cnf(i_0_18445, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_18921, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_20239, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
######################################
#cnf(i_0_18472, plain, (X1=X2|~lessthanorequal(esk3_2(X3,X2),X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_18473, plain, (X1=X2|~main_query_0(X1,esk3_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_18503, plain, (X1=X2|~lessthanorequal(esk3_2(X3,X1),X2)|~lessthanorequal(X2,X1)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_18504, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_2453, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X4))|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
########
#cnf(i_0_3420, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
############
#cnf(i_0_764, plain, (esk3_2(esk3_2(X1,X2),X1)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_21554, plain, (esk3_2(X2,X1)=esk3_2(X1,X2)|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_21596, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
######
#cnf(i_0_21667, plain, (lessthanorequal(X1,esk3_2(X1,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
##############
#cnf(i_0_21628, plain, (lessthanorequal(esk3_2(X2,X1),esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
############
#cnf(i_0_22199, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#######
#cnf(i_0_21683, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X1,X3),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_21684, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##############
#cnf(i_0_21625, plain, (lessthanorequal(X1,esk3_2(X3,X2))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_21626, plain, (lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########################
#cnf(i_0_21630, plain, (a(X1,esk3_2(X2,X1),esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_21666, plain, (b(X1,esk3_2(X1,X2),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#################################################
#cnf(i_0_21610, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
##########
#cnf(i_0_21611, plain, (X1=X2|~main_query_0(esk3_2(X3,X1),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
###
#cnf(i_0_21618, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X2))|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
##########
#cnf(i_0_21636, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#####
#cnf(i_0_21619, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_21681, plain, (X1=X2|~lessthanorequal(esk3_2(X2,X3),X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
#########
#cnf(i_0_21682, plain, (X1=X2|~main_query_0(X1,esk3_2(X2,X3))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_21685, plain, (X1=X2|~lessthanorequal(esk3_2(X1,X3),X2)|~lessthanorequal(X2,X1)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#########
#cnf(i_0_21686, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
######
#cnf(i_0_22036, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X2,X1),X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_22090, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_22093, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_22288, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_22344, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#################
#cnf(i_0_23753, plain, (X1=X2|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_23755, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###################################
#cnf(i_0_21603, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~lessthanorequal(X3,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_25360, plain, (esk3_2(X2,X1)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_25364, plain, (lessthanorequal(esk3_2(X2,X1),X1)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
##
#cnf(i_0_26025, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
########
#cnf(i_0_25729, plain, (esk3_2(X1,X2)=X1|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_21605, plain, (esk3_2(X1,X2)=esk3_2(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_845, plain, (esk5_2(X1,esk5_2(X2,X1))=esk5_2(X2,X1)|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
###
#cnf(i_0_26704, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_26750, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#######
#cnf(i_0_26813, plain, (esk5_2(X2,X1)=esk3_2(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
############################
#cnf(i_0_26817, plain, (b(X1,esk5_2(X1,X2),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####################
#cnf(i_0_26790, plain, (X1=X2|~lessthanorequal(esk5_2(X2,X3),X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
######
#cnf(i_0_26830, plain, (X1=X2|~lessthanorequal(esk5_2(X1,X3),X2)|~lessthanorequal(X2,X1)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###########################################
#cnf(i_0_26747, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
##
#cnf(i_0_27350, plain, (esk5_2(X2,X1)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_27377, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_27967, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_27678, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#####
#cnf(i_0_26749, plain, (esk5_2(X1,X2)=esk5_2(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
########
#cnf(i_0_5452, plain, (a(X1,X1,esk4_2(X1,esk5_2(X2,X1)))|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
#
#cnf(i_0_28562, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1))).
###
#cnf(i_0_5501, plain, (b(X1,X1,esk6_2(esk3_2(X1,X2),X1))|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_28672, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2))).
###################
#cnf(i_0_16298, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(X2,X1)|~main_query_0(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_17823, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~main_query_0(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_17865, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X3,X1)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_18002, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X1)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
################
#cnf(i_0_28821, plain, (X3=esk3_2(X2,X1)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_29516, plain, (X3=esk3_2(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X3,X2))).
########
#cnf(i_0_29522, plain, (X3=esk5_2(X2,X1)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####################
#cnf(i_0_29708, plain, (X3=esk5_2(X2,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X2,X3))).
########################################################################
#cnf(i_0_123, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
########
#cnf(i_0_142, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(esk5_2(X4,X1),X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_151, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X4,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_160, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
############
#cnf(i_0_1894, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
#
#cnf(i_0_34110, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###############
#cnf(i_0_34470, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_34477, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X1,X3))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_2016, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
###
#cnf(i_0_173, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4))).
####
#cnf(i_0_174, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X2,X1)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_183, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~main_query_0(X3,X4))).
#######
#cnf(i_0_184, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
#####
#cnf(i_0_212, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X1)|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_213, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X4),X1)|~main_query_0(X2,X1)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_222, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X4))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X4))).
######
#cnf(i_0_223, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X3,X4))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
######
#cnf(i_0_235, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_2419, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X4,X1),X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
#####
#cnf(i_0_236, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_261, plain, (X1=X2|~lessthanorequal(X3,X1)|~main_query_0(esk3_2(X3,X4),X2)|~main_query_0(X2,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_262, plain, (X1=X2|~main_query_0(esk3_2(X3,X4),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_2552, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_277, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X4)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
###
#cnf(i_0_278, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_303, plain, (X1=X2|~lessthanorequal(X2,X4)|~main_query_0(X1,esk5_2(X3,X4))|~main_query_0(X2,X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_304, plain, (X1=X2|~main_query_0(X1,esk5_2(X3,X4))|~main_query_0(X2,X1)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
##
#cnf(i_0_809, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_812, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X2)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X3,X1))).
###
#cnf(i_0_813, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X2,X1)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
###
#cnf(i_0_817, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
##
#cnf(i_0_866, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3))).
#######
#cnf(i_0_869, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
#######
#cnf(i_0_870, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_874, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
##
#cnf(i_0_885, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X4)|~lessthanorequal(X4,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_888, plain, (X1=X2|~lessthanorequal(X4,X1)|~main_query_0(X4,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_889, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X2),X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
###
#cnf(i_0_893, plain, (X1=X2|~main_query_0(X4,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
##
#cnf(i_0_923, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X1,X3))|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_926, plain, (X1=X2|~lessthanorequal(X4,esk3_2(X1,X3))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
#######
#cnf(i_0_927, plain, (X1=X2|~lessthanorequal(X2,X4)|~main_query_0(esk3_2(X1,X3),X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_931, plain, (X1=X2|~main_query_0(esk3_2(X1,X3),X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
#######
#cnf(i_0_12045, plain, (lessthanorequal(esk3_2(X1,X3),X1)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
##
#cnf(i_0_42888, plain, (lessthanorequal(esk3_2(X1,X2),X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
##
#cnf(i_0_12422, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_43544, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_19801, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
########
#cnf(i_0_20538, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
########
#cnf(i_0_22286, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk3_2(X2,X1),X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####################
#cnf(i_0_22341, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####################
#cnf(i_0_25998, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_27953, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
############################################
#cnf(i_0_42901, plain, (lessthanorequal(esk3_2(X1,X2),X1)|~main_query_0(esk3_2(X3,X1),X2)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
########
#cnf(i_0_43553, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_43559, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_43560, plain, (lessthanorequal(X1,esk5_2(X2,X1))|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###########################################################
#cnf(i_0_5715, plain, (X1=X2|~lessthanorequal(esk5_2(X4,X2),X1)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X4,X2))).
#####
#cnf(i_0_19545, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
##
#cnf(i_0_5754, plain, (X1=X2|~lessthanorequal(X2,esk3_2(X1,X4))|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X4))).
######
#cnf(i_0_20277, plain, (esk5_2(X1,X2)=esk3_2(X1,X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#####
#cnf(i_0_6070, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X4),X2)|~main_query_0(X1,X4))).
####
#cnf(i_0_6127, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~lessthanorequal(X4,X1)|~main_query_0(X4,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_6166, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X1)|~main_query_0(X4,X2)|~main_query_0(X2,X3))).
#####
#cnf(i_0_6395, plain, (X1=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,esk5_2(X4,X2))|~main_query_0(X4,X2))).
####
#cnf(i_0_6443, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~lessthanorequal(X2,X4)|~main_query_0(X1,X4)|~main_query_0(X3,X1))).
####
#cnf(i_0_6482, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X2,X4)|~main_query_0(X1,X4)|~main_query_0(X2,X3))).
#####
#cnf(i_0_6711, plain, (X1=X2|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X4,X2)|~main_query_0(X1,X4)|~main_query_0(X3,X1))).
###
#cnf(i_0_6750, plain, (X1=X2|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X4,X2)|~main_query_0(X1,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_6970, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X1,X4),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
####
#cnf(i_0_7247, plain, (X1=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,esk5_2(X4,X2))|~main_query_0(X3,X1)|~main_query_0(X4,X2))).
###
#cnf(i_0_7286, plain, (X1=X2|~lessthanorequal(X2,X4)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_7506, plain, (X1=X2|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X4,X2)|~main_query_0(X1,X4)|~main_query_0(X2,X3))).
##
#cnf(i_0_7735, plain, (X1=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,esk5_2(X4,X2))|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_8003, plain, (X1=X2|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X4,X2)|~main_query_0(X1,X4)|~main_query_0(X3,X1))).
##################################################################################################
#cnf(i_0_362, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X3,X4))).
########
#cnf(i_0_414, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_624, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
########
#cnf(i_0_693, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
############
#cnf(i_0_12171, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
######
#cnf(i_0_12174, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3))).
##
#cnf(i_0_12507, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X4,X1))).
###
#cnf(i_0_14931, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X1)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#########
#cnf(i_0_12509, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,esk5_2(X4,X1))|~main_query_0(X4,X1))).
##########
#cnf(i_0_770, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
######
#cnf(i_0_774, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_775, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X3))).
####
#cnf(i_0_776, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_16333, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X3,X1)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#########
#cnf(i_0_778, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_17963, plain, (esk5_2(X1,X2)=X3|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
######
#cnf(i_0_779, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_780, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
###
#cnf(i_0_781, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_848, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
######
#cnf(i_0_852, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_853, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X3))).
####
#cnf(i_0_854, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_18099, plain, (X1=esk3_2(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#########
#cnf(i_0_856, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_857, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_858, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
####
#cnf(i_0_859, plain, (esk5_2(X1,X2)=X2|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###################################
#cnf(i_0_21657, plain, (esk3_2(X2,X1)=X3|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####################
#cnf(i_0_21659, plain, (esk3_2(X2,X1)=X3|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X1))).
###########
#cnf(i_0_5477, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X1)|~main_query_0(X2,X1))).
#######
#cnf(i_0_5521, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X2,X2)|~main_query_0(X2,X1))).
#######
#cnf(i_0_15616, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X4,X1)|~lessthanorequal(X3,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X1))).
###
#cnf(i_0_21660, plain, (esk3_2(X2,X1)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X2,X1))).
######
#cnf(i_0_15619, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X4,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X4,X3))).
###
#cnf(i_0_15620, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X4))).
##
#cnf(i_0_15624, plain, (esk5_2(X1,X2)=X2|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
##
#cnf(i_0_17061, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X1,X3)|~main_query_0(X2,X1))).
####
#cnf(i_0_17064, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X4,X2))).
##
#cnf(i_0_17065, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X2,X4)|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_17069, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_21661, plain, (esk3_2(X2,X1)=X3|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X2,X1))).
#########
#cnf(i_0_25754, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X1)|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_25757, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X4,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X4,X3))).
#####
#cnf(i_0_27690, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_27694, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
##########################
#cnf(i_0_26783, plain, (esk5_2(X3,X2)=X1|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
############
#cnf(i_0_26784, plain, (esk5_2(X3,X2)=X1|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X3,X2))).
########
#cnf(i_0_26785, plain, (esk5_2(X3,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X2))).
############
#cnf(i_0_26786, plain, (esk5_2(X3,X2)=X1|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X3,X2))).
#######################################
#cnf(i_0_30966, plain, (X1=esk3_2(X2,X3)|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_31876, plain, (X1=esk5_2(X2,X3)|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#####
#cnf(i_0_55339, plain, (X3=esk3_2(X2,X1)|~lessthanorequal(X3,X1)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
############
#cnf(i_0_57742, plain, (X3=esk5_2(X2,X1)|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
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
#cnf(i_0_575, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X4,esk5_2(X1,X2))|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
###
#cnf(i_0_642, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(esk5_2(X1,X2),X4)|~main_query_0(X3,X4)|~main_query_0(X1,X2))).
##############
#cnf(i_0_12128, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~main_query_0(esk3_2(X4,X1),X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_12130, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(esk3_2(X4,X1),X2)|~main_query_0(X3,X4)|~main_query_0(X4,X1))).
##
#cnf(i_0_12550, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X3,X4))).
###
#cnf(i_0_12553, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_25361, plain, (lessthanorequal(esk3_2(X2,X1),esk5_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_26425, plain, (lessthanorequal(esk3_2(X2,X1),esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_27351, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X2,X1))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_28390, plain, (lessthanorequal(esk3_2(X1,X2),esk5_2(X2,X1))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
######
#cnf(i_0_15191, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
#######
#cnf(i_0_15194, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
#####
#cnf(i_0_15195, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
#####
#cnf(i_0_15199, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_15259, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2))).
#######
#cnf(i_0_15262, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X3))).
#######
#cnf(i_0_15263, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
######
#cnf(i_0_15267, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X3)|~main_query_0(X2,X4))).
#####
#cnf(i_0_15506, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#######
#cnf(i_0_15509, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3))).
######
#cnf(i_0_15510, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X4))).
######
#cnf(i_0_15514, plain, (esk3_2(X1,X2)=X3|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X2,X4))).
#####
#cnf(i_0_15909, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#####
#cnf(i_0_15912, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X4,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
####
#cnf(i_0_15913, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_15917, plain, (esk3_2(X1,X2)=X3|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_16614, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3))).
######
#cnf(i_0_16617, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
#####
#cnf(i_0_16618, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
#####
#cnf(i_0_16622, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_16682, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X1)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3))).
#######
#cnf(i_0_16685, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
######
#cnf(i_0_16686, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X1,X4))).
######
#cnf(i_0_16690, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X1,X4))).
#####
#cnf(i_0_16946, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X4,X1)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
#######
#cnf(i_0_16949, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X4,X2))).
######
#cnf(i_0_16950, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
######
#cnf(i_0_16954, plain, (X1=esk5_2(X2,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X1)|~main_query_0(X4,X2)|~main_query_0(X1,X4))).
#####
#cnf(i_0_17376, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
#####
#cnf(i_0_17379, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_17380, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_17384, plain, (X1=esk5_2(X2,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###################################################
#cnf(i_0_1100, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2))).
####
#cnf(i_0_1163, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_1202, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,X4)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_1241, plain, (lessthanorequal(X1,X3)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X2,X4))).
##
#cnf(i_0_1243, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3))).
#####
#cnf(i_0_1245, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_1308, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_1310, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X4,X3)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
###
#cnf(i_0_1349, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_1351, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
###
#cnf(i_0_1390, plain, (lessthanorequal(X1,X3)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_1251, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2))).
###
#cnf(i_0_1392, plain, (lessthanorequal(X1,X3)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
#####
#cnf(i_0_1316, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_1357, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
####
#cnf(i_0_1398, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X2,X4))).
###
#cnf(i_0_19521, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X2)|~lessthanorequal(X4,X1)|~main_query_0(X3,X1)|~main_query_0(X4,X3))).
#######
#cnf(i_0_19522, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X1)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X4,X3))).
#####
#cnf(i_0_19953, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
######
#cnf(i_0_19955, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
###
#cnf(i_0_8406, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_8444, plain, (a(X1,X1,esk4_2(X1,X2))|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
###
#cnf(i_0_20242, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
#######
#cnf(i_0_20243, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X2,esk3_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
######
#cnf(i_0_8663, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_8765, plain, (a(X1,X1,esk4_2(X1,X2))|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_25341, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X2))|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_25342, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_26229, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
###
#cnf(i_0_26232, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
##
#cnf(i_0_9002, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(esk5_2(X3,X2),X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_27384, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X1,X3),X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
###
#cnf(i_0_27385, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
##
#cnf(i_0_9040, plain, (b(X1,X1,esk6_2(X2,X1))|~lessthanorequal(X2,esk3_2(X1,X3))|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
#######
#cnf(i_0_28126, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X1,X3),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X4)|~main_query_0(X4,X3))).
##
#cnf(i_0_28128, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_9131, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(esk3_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_9209, plain, (b(X1,X1,esk6_2(X2,X1))|~main_query_0(X1,esk5_2(X3,X2))|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
########################
#cnf(i_0_18451, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X4),X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
############
#cnf(i_0_18452, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X4),X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
############
#cnf(i_0_18453, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_18454, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,esk3_2(X4,X1))|~main_query_0(X4,X1)|~main_query_0(X1,X4))).
####
#cnf(i_0_18455, plain, (lessthanorequal(X1,X2)|~main_query_0(X3,esk3_2(X4,X1))|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X1,X4))).
####
#cnf(i_0_18462, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_18463, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_18465, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_18466, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_18501, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X4)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_18502, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X1),X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X1,X3))).
############
#cnf(i_0_18510, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,esk3_2(X4,X3))|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
######################################
#cnf(i_0_21615, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X2),X4)|~main_query_0(X2,X3)|~main_query_0(X4,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_21672, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X4,X3))|~lessthanorequal(X3,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
############
#cnf(i_0_21673, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X4,X3),X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_21674, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X4,X3))|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
############
#cnf(i_0_21675, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X4,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_21676, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,esk3_2(X4,X2))|~lessthanorequal(X1,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X2))).
#############
#cnf(i_0_21677, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,esk3_2(X4,X2))|~main_query_0(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X4,X2))).
############
#cnf(i_0_21678, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X4,X2),X3)|~main_query_0(X2,X4)|~main_query_0(X4,X2))).
##########
#cnf(i_0_19480, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_19482, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
#########
#cnf(i_0_21798, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X4),X2)|~lessthanorequal(X1,X3)|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
#########
#cnf(i_0_21799, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X4),X2)|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
#########
#cnf(i_0_21812, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X1,X4),X3)|~lessthanorequal(X3,X2)|~main_query_0(X4,X1)|~main_query_0(X1,X4))).
###########
#cnf(i_0_21824, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~main_query_0(X4,esk3_2(X1,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_21825, plain, (lessthanorequal(X1,X2)|~main_query_0(X4,esk3_2(X1,X3))|~main_query_0(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_21827, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X1,X3),X4)|~main_query_0(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
##########
#cnf(i_0_21866, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,esk3_2(X3,X4))|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_21867, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X4))|~main_query_0(X3,X1)|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
#####
#cnf(i_0_20007, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_20010, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
############
#cnf(i_0_20201, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_20203, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
#########
#cnf(i_0_26764, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X4,X3),X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
#####
#cnf(i_0_26765, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X4,X3),X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_26766, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X4,X3))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_26769, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(X3,esk5_2(X1,X4))|~main_query_0(X4,X1)|~main_query_0(X1,X4))).
####
#cnf(i_0_26770, plain, (lessthanorequal(X1,X2)|~main_query_0(X3,esk5_2(X1,X4))|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X1,X4))).
####
#cnf(i_0_26828, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X1,X3),X4)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
#####
#cnf(i_0_26829, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X1,X3),X4)|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X1,X3))).
####
#cnf(i_0_26837, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,esk5_2(X3,X4))|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
######################
#cnf(i_0_21629, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_21639, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_21641, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_21642, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
################################################
#cnf(i_0_21878, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X2)|~lessthanorequal(X1,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_21881, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X4,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_21883, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X2,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
########
#cnf(i_0_21930, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X4)|~main_query_0(X3,X2)|~main_query_0(X2,X3))).
################################################################################
#cnf(i_0_25365, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_25370, plain, (lessthanorequal(esk3_2(X2,X1),X3)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####################################################
#cnf(i_0_26174, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X4,X2)|~main_query_0(X1,X4))).
####
#cnf(i_0_26176, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X4,X2)|~main_query_0(X1,X4))).
########################################
#cnf(i_0_26777, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_26778, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_26780, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_26781, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~main_query_0(X4,X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####################################
#cnf(i_0_27329, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_27331, plain, (lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####################################
#cnf(i_0_28185, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
##
#cnf(i_0_28188, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X4)|~main_query_0(X4,X3))).
##########
#cnf(i_0_28563, plain, (a(X1,X1,esk4_2(X1,X1))|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_168364, plain, (a(X1,X1,esk4_2(X1,X1))|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
###
#cnf(i_0_28674, plain, (b(X1,X1,esk6_2(X1,X1))|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#
#cnf(i_0_168610, plain, (b(X1,X1,esk6_2(X1,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
##############################################################################################################################################################################################################################
#cnf(i_0_43111, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X4,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X2))).
##
#cnf(i_0_43115, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X4,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X2))).
#
#cnf(i_0_43710, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X4))).
###
#cnf(i_0_43712, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X4))).
####
#cnf(i_0_325, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X5)|~lessthanorequal(X4,X2)|~lessthanorequal(X5,X4)|~main_query_0(X3,X1))).
#####
#cnf(i_0_326, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X5,X4)|~lessthanorequal(X1,X5)|~main_query_0(X2,X3))).
########
#cnf(i_0_353, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X4,X5),X3)|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X5)|~main_query_0(X4,X5))).
#####
#cnf(i_0_354, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X4,X5),X3)|~lessthanorequal(X3,X2)|~main_query_0(X5,X1)|~main_query_0(X4,X5))).
####
#cnf(i_0_363, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X4,X5))|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(X4,X5))).
########
#cnf(i_0_364, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X4,X5))|~lessthanorequal(X3,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X5))).
#######
#cnf(i_0_366, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X1,X5)|~lessthanorequal(X5,X4)|~main_query_0(X3,X4))).
#####
#cnf(i_0_367, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X1,X5)|~main_query_0(X4,X5)|~main_query_0(X3,X4))).
####
#cnf(i_0_376, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X5,esk3_2(X3,X4))|~lessthanorequal(X1,X5)|~lessthanorequal(X3,X2)|~main_query_0(X3,X4))).
########
#cnf(i_0_377, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X5,esk3_2(X3,X4))|~lessthanorequal(X1,X5)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
#######
#cnf(i_0_388, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~lessthanorequal(X5,X4)|~main_query_0(X5,esk5_2(X3,X1))|~main_query_0(X3,X1))).
####
#cnf(i_0_389, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~lessthanorequal(X5,X4)|~main_query_0(X2,X3)|~main_query_0(X5,X1))).
#######
#cnf(i_0_415, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~main_query_0(esk3_2(X4,X5),X1)|~main_query_0(X4,X5))).
####
#cnf(i_0_416, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X4,X5),X1)|~main_query_0(X3,X4)|~main_query_0(X4,X5))).
####
#cnf(i_0_418, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~lessthanorequal(X5,X4)|~main_query_0(X5,X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_419, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X2)|~main_query_0(X5,X1)|~main_query_0(X4,X5)|~main_query_0(X3,X4))).
####
#cnf(i_0_429, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X5,esk3_2(X3,X4))|~lessthanorequal(X3,X2)|~main_query_0(X5,X1)|~main_query_0(X3,X4))).
#######
#cnf(i_0_23230, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X3,X1)|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#
#cnf(i_0_430, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X5,esk3_2(X3,X4))|~main_query_0(X5,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
######
#cnf(i_0_442, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X5,X2)|~main_query_0(X3,X1)|~main_query_0(X5,X4))).
####
#cnf(i_0_443, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X5,esk3_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X5,X4))).
#######
#cnf(i_0_471, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(esk3_2(X4,X5),X3)|~main_query_0(X4,X5))).
####
#cnf(i_0_472, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X4,X5),X3)|~main_query_0(X2,X4)|~main_query_0(X4,X5))).
###
#cnf(i_0_489, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X5,X2)|~lessthanorequal(X1,X4)|~main_query_0(X5,esk5_2(X3,X4))|~main_query_0(X3,X4))).
####
#cnf(i_0_490, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X5,X2)|~main_query_0(X5,esk5_2(X3,X4))|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_23231, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
#
#cnf(i_0_500, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X2)|~main_query_0(X5,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X4,X5))).
###
#cnf(i_0_23232, plain, (a(X1,X3,esk4_2(X1,X2))|~lessthanorequal(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
#
#cnf(i_0_501, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk3_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X5,X1)|~main_query_0(X4,X5))).
######
#cnf(i_0_530, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(esk3_2(X3,X4),X5)|~main_query_0(X5,X1)|~main_query_0(X3,X4))).
###
#cnf(i_0_531, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X5)|~main_query_0(X5,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_23233, plain, (a(X1,X3,esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
#
#cnf(i_0_545, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~main_query_0(X3,X1)|~main_query_0(X2,X5)|~main_query_0(X5,X4))).
###
#cnf(i_0_23306, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X3,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_546, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(esk3_2(X2,X3),X5)|~main_query_0(X2,X3)|~main_query_0(X5,X4))).
###
#cnf(i_0_23307, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#
#cnf(i_0_579, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~main_query_0(X5,esk5_2(X3,X4))|~main_query_0(X2,X5)|~main_query_0(X3,X4))).
###
#cnf(i_0_23308, plain, (b(X1,X3,esk6_2(X2,X1))|~lessthanorequal(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#
#cnf(i_0_580, plain, (lessthanorequal(X1,X2)|~main_query_0(X5,esk5_2(X3,X4))|~main_query_0(X2,X5)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
##
#cnf(i_0_592, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X1),X4)|~lessthanorequal(X4,X5)|~main_query_0(X3,X1)|~main_query_0(X2,X5))).
####
#cnf(i_0_593, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X4)|~lessthanorequal(X4,X5)|~main_query_0(esk3_2(X2,X3),X5)|~main_query_0(X2,X3))).
####
#cnf(i_0_625, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X3,X5)|~main_query_0(X2,X5)|~main_query_0(X3,X4))).
#######
#cnf(i_0_626, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk3_2(X3,X4))|~main_query_0(X2,X5)|~main_query_0(X5,X3)|~main_query_0(X3,X4))).
######
#cnf(i_0_23309, plain, (b(X1,X3,esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#
#cnf(i_0_628, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X5)|~main_query_0(X2,esk5_2(X4,X5))|~main_query_0(X4,X5))).
####
#cnf(i_0_629, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(X2,esk5_2(X4,X5))|~main_query_0(X5,X3)|~main_query_0(X4,X5))).
####
#cnf(i_0_646, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X5)|~lessthanorequal(X1,X4)|~main_query_0(X2,X5)|~main_query_0(X3,X4))).
####
#cnf(i_0_647, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk5_2(X3,X4),X5)|~main_query_0(X2,X5)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
####
#cnf(i_0_660, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X5)|~main_query_0(X4,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X2,X5))).
####
#cnf(i_0_661, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X5)|~main_query_0(esk3_2(X2,X3),X5)|~main_query_0(X2,X3)|~main_query_0(X4,X1))).
####
#cnf(i_0_694, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X5)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X2,X5)|~main_query_0(X3,X4))).
####
#cnf(i_0_695, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X3,X4),X1)|~main_query_0(X2,X5)|~main_query_0(X5,X3)|~main_query_0(X3,X4))).
##
#cnf(i_0_697, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X5)|~main_query_0(X2,esk5_2(X4,X5))|~main_query_0(X3,X1)|~main_query_0(X4,X5))).
###
#cnf(i_0_698, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk5_2(X4,X5))|~main_query_0(X3,X1)|~main_query_0(X5,X3)|~main_query_0(X4,X5))).
###
#cnf(i_0_712, plain, (lessthanorequal(X1,X2)|~main_query_0(X5,esk5_2(X3,X1))|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X4,X5))).
##
#cnf(i_0_713, plain, (lessthanorequal(X1,X2)|~main_query_0(esk3_2(X2,X3),X4)|~main_query_0(X2,X3)|~main_query_0(X5,X1)|~main_query_0(X4,X5))).
#############################################################################################
#cnf(i_0_350, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~lessthanorequal(X1,X5)|~main_query_0(X1,X2))).
########
#cnf(i_0_351, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~main_query_0(X5,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_379, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X5,X4)|~lessthanorequal(X1,X5)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3))).
########
#cnf(i_0_380, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X5,X4)|~lessthanorequal(X1,X5)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_432, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X5,X4)|~lessthanorequal(X4,X3)|~main_query_0(X5,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_433, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X5,X4)|~main_query_0(X5,X1)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_474, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~lessthanorequal(X5,X3)|~main_query_0(X5,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_475, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X5,X4)|~main_query_0(X3,X5)|~main_query_0(X2,X3))).
####
#cnf(i_0_486, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X5,X3)|~lessthanorequal(X1,X4)|~main_query_0(X5,X4)|~main_query_0(X1,X2))).
####
#cnf(i_0_487, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X5,X3)|~main_query_0(X5,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_533, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X4,X3)|~main_query_0(X5,X1)|~main_query_0(X4,X5)|~main_query_0(X2,X3))).
####
#cnf(i_0_534, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X5,X1)|~main_query_0(X4,X5)|~main_query_0(X3,X4)|~main_query_0(X2,X3))).
####
#cnf(i_0_576, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,X4)|~main_query_0(X3,X5)|~main_query_0(X5,X4)|~main_query_0(X1,X2))).
####
#cnf(i_0_577, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X5)|~main_query_0(X5,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_643, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X5)|~lessthanorequal(X1,X4)|~main_query_0(X3,X5)|~main_query_0(X1,X2))).
####
#cnf(i_0_644, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X4,X5)|~main_query_0(X3,X5)|~main_query_0(X4,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_765, plain, (esk3_2(X1,esk5_2(X2,X3))=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X2,X3))).
#
#cnf(i_0_230860, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X2,X3))).
###
#cnf(i_0_230990, plain, (esk3_2(X1,X2)=X1|~lessthanorequal(X1,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_231422, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_766, plain, (esk3_2(X1,esk5_2(X2,X3))=X1|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#
#cnf(i_0_232172, plain, (esk3_2(X1,X2)=X1|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#######
#cnf(i_0_840, plain, (esk5_2(esk3_2(X1,X2),X3)=X3|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
#
#cnf(i_0_232623, plain, (esk5_2(X2,X3)=X3|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_232754, plain, (esk5_2(X1,X2)=X2|~lessthanorequal(X3,X2)|~main_query_0(X3,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_233139, plain, (esk5_2(X1,X2)=X2|~main_query_0(X3,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3)|~main_query_0(X2,X3))).
####
#cnf(i_0_841, plain, (esk5_2(esk3_2(X1,X2),X3)=X3|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
#
#cnf(i_0_233747, plain, (esk5_2(X2,X3)=X3|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
#######
#cnf(i_0_1063, plain, (a(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X2,X1)|~main_query_0(X3,X4)|~main_query_0(X5,X6))).
####
#cnf(i_0_1064, plain, (a(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1069, plain, (a(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X2,X1)|~main_query_0(X5,X6))).
####
#cnf(i_0_1070, plain, (a(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_0(X5,X6)|~main_query_0(X2,X1))).
####
#cnf(i_0_1075, plain, (a(X1,esk15_2(X2,X1),esk16_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_1(X2,X1))).
####
#cnf(i_0_1076, plain, (a(X1,esk5_2(X2,X1),esk6_2(X2,X1))|~main_query_1(X3,X4)|~main_query_1(X5,X6)|~main_query_0(X2,X1))).
############################################################################################################################################################################################################################
#cnf(i_0_5504, plain, (esk3_2(X1,esk3_2(X1,X2))=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_5519, plain, (esk5_2(esk5_2(X1,X2),X2)=X2|~main_query_0(X2,esk5_2(X1,X2))|~main_query_0(X2,X2)|~main_query_0(X1,X2))).
###########################################################
#cnf(i_0_208, plain, (X1=esk3_2(X2,X3)|~lessthanorequal(esk5_2(X2,X3),X1)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_221, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,esk3_2(X1,X2))|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2))).
#####
#cnf(i_0_234, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(esk5_2(X2,X3),X1)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
#
#cnf(i_0_236416, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(X2,X1)|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X2,X3))).
###
#cnf(i_0_273, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,esk3_2(X1,X2))|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2))).
###
#cnf(i_0_236843, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X1,X2))).
###
#cnf(i_0_327, plain, (X1=X2|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X1)|~lessthanorequal(X5,X4)|~lessthanorequal(X3,X5)|~main_query_0(X2,X1))).
#####
#cnf(i_0_328, plain, (X1=X2|~lessthanorequal(X4,X1)|~lessthanorequal(X5,X4)|~lessthanorequal(X3,X5)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_332, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~lessthanorequal(X1,X5))).
#####
#cnf(i_0_334, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~lessthanorequal(X1,X5)|~main_query_0(X2,X3))).
######
#cnf(i_0_337, plain, (X1=X2|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~lessthanorequal(X2,X5)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
#####
#cnf(i_0_342, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X2)|~lessthanorequal(X5,X4)|~lessthanorequal(X3,X5)|~main_query_0(X3,X1))).
####
#cnf(i_0_390, plain, (X1=X2|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X1)|~lessthanorequal(X5,X4)|~main_query_0(X2,X1)|~main_query_0(X5,X3))).
####
#cnf(i_0_391, plain, (X1=X2|~lessthanorequal(X4,X1)|~lessthanorequal(X5,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X5,X3))).
####
#cnf(i_0_398, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~main_query_0(X2,X3)|~main_query_0(X5,X1))).
####
#cnf(i_0_401, plain, (X1=X2|~lessthanorequal(X4,X3)|~lessthanorequal(X5,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X5,X2))).
###
#cnf(i_0_404, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~lessthanorequal(X5,X4)|~main_query_0(X5,X3))).
####
#cnf(i_0_407, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X2)|~lessthanorequal(X5,X4)|~main_query_0(X3,X1)|~main_query_0(X5,X3))).
####
#cnf(i_0_444, plain, (X1=X2|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X4)|~lessthanorequal(X5,X1)|~main_query_0(X2,X1)|~main_query_0(X5,X4))).
####
#cnf(i_0_445, plain, (X1=X2|~lessthanorequal(X3,X4)|~lessthanorequal(X5,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X5,X4))).
###
#cnf(i_0_15178, plain, (esk3_2(esk3_2(X1,X2),X3)=X1|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_248173, plain, (esk3_2(X2,X3)=X1|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_248306, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~main_query_0(X3,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###
#cnf(i_0_249431, plain, (esk3_2(X1,X2)=X3|~main_query_0(X3,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3)|~main_query_0(X2,X3))).
###
#cnf(i_0_15257, plain, (esk3_2(X1,esk5_2(X2,X3))=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X2,X3))).
####
#cnf(i_0_250907, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X2,X3))).
###
#cnf(i_0_251044, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#########
#cnf(i_0_15504, plain, (esk3_2(X1,esk5_2(X2,X3))=X3|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_252689, plain, (esk3_2(X1,X2)=X3|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
########
#cnf(i_0_15614, plain, (esk5_2(esk5_2(X1,X2),X3)=X3|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
#
#cnf(i_0_253184, plain, (esk5_2(X1,X3)=X3|~main_query_0(X3,esk5_2(X1,X2))|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_15896, plain, (esk3_2(esk3_2(X1,X2),X3)=X1|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_253760, plain, (esk3_2(X2,X3)=X1|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
#######
#cnf(i_0_453, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X4)|~lessthanorequal(X5,X3)|~main_query_0(X2,X3)|~main_query_0(X5,X4))).
####
#cnf(i_0_456, plain, (X1=X2|~lessthanorequal(X2,X4)|~lessthanorequal(X5,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X5,X4))).
###
#cnf(i_0_459, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~lessthanorequal(X5,X2)|~main_query_0(X5,X4))).
####
#cnf(i_0_462, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X4)|~lessthanorequal(X5,X2)|~main_query_0(X3,X1)|~main_query_0(X5,X4))).
###
#cnf(i_0_16612, plain, (esk5_2(X2,esk5_2(X3,X1))=X1|~lessthanorequal(X2,X1)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
###
#cnf(i_0_257125, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X2,X3))).
###
#cnf(i_0_257264, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X1,X3)|~main_query_0(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_258334, plain, (esk5_2(X1,X2)=X3|~main_query_0(X1,X3)|~main_query_0(X2,X3)|~main_query_0(X3,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_16669, plain, (esk5_2(esk3_2(X1,X2),X3)=X1|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
####
#cnf(i_0_259697, plain, (esk5_2(X2,X3)=X1|~lessthanorequal(X1,X3)|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X1,X2))).
###
#cnf(i_0_259841, plain, (esk5_2(X1,X2)=X3|~lessthanorequal(X3,X2)|~main_query_0(X3,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3))).
###########
#cnf(i_0_502, plain, (X1=X2|~lessthanorequal(X2,X3)|~lessthanorequal(X4,X1)|~main_query_0(X2,X1)|~main_query_0(X5,X3)|~main_query_0(X4,X5))).
###
#cnf(i_0_503, plain, (X1=X2|~lessthanorequal(X4,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X5,X3)|~main_query_0(X4,X5))).
###
#cnf(i_0_16933, plain, (esk5_2(esk3_2(X1,X2),X3)=X1|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_262094, plain, (esk5_2(X2,X3)=X1|~main_query_0(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_17048, plain, (esk3_2(X1,esk3_2(X2,X3))=X1|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
#
#cnf(i_0_262671, plain, (esk3_2(X1,X3)=X1|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_511, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X5,X1)|~main_query_0(X4,X5))).
###
#cnf(i_0_17374, plain, (esk5_2(X2,esk5_2(X3,X1))=X1|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###
#cnf(i_0_263704, plain, (esk5_2(X1,X2)=X3|~main_query_0(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_514, plain, (X1=X2|~lessthanorequal(X4,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X5,X2)|~main_query_0(X4,X5))).
##
#cnf(i_0_517, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X5,X3)|~main_query_0(X4,X5))).
####
#cnf(i_0_520, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X5,X3)|~main_query_0(X4,X5))).
##
#cnf(i_0_547, plain, (X1=X2|~lessthanorequal(X2,X3)|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X5)|~main_query_0(X5,X4))).
###
#cnf(i_0_548, plain, (X1=X2|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X5)|~main_query_0(X5,X4))).
##
#cnf(i_0_18496, plain, (esk3_2(X1,esk3_2(X2,X1))=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_18599, plain, (esk3_2(X1,esk3_2(X2,X1))=X1|~main_query_0(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
######
#cnf(i_0_557, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X5)|~main_query_0(X5,X4))).
##
#cnf(i_0_19517, plain, (b(X1,esk3_2(X2,X1),esk6_2(X2,X1))|~lessthanorequal(X3,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
###
#cnf(i_0_560, plain, (X1=X2|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X5)|~main_query_0(X5,X4))).
##
#cnf(i_0_563, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X1,X3)|~lessthanorequal(X3,X4)|~main_query_0(X2,X5)|~main_query_0(X5,X4))).
###
#cnf(i_0_19813, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X4,X1)|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_19816, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X4,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X4,X3))).
####
#cnf(i_0_19817, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
####
#cnf(i_0_19821, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
####
#cnf(i_0_20174, plain, (b(X1,esk3_2(X2,X1),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X3))).
####
#cnf(i_0_20238, plain, (b(X1,esk3_2(X2,X1),esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
##
#cnf(i_0_566, plain, (X1=X2|~lessthanorequal(X2,X1)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X5)|~main_query_0(X5,X4))).
##
#cnf(i_0_20545, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
############
#cnf(i_0_20549, plain, (lessthanorequal(X1,esk3_2(X2,X1))|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
################
#cnf(i_0_21654, plain, (esk5_2(esk3_2(X2,X1),X1)=X1|~main_query_0(esk3_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_21857, plain, (esk3_2(X1,esk3_2(X1,X2))=X1|~main_query_0(X1,esk3_2(X1,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
######
#cnf(i_0_715, plain, (X1=X2|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X4)|~main_query_0(X5,X3)|~main_query_0(X4,X5))).
###
#cnf(i_0_724, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X5,X1)|~main_query_0(X4,X5))).
###
#cnf(i_0_25363, plain, (a(X1,esk3_2(X2,X1),esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_26023, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~lessthanorequal(X4,X1)|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2))).
####
#cnf(i_0_26026, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~lessthanorequal(X4,X1)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X4,X3))).
####
#cnf(i_0_26027, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~lessthanorequal(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X1,X4))).
####
#cnf(i_0_26031, plain, (lessthanorequal(esk3_2(X1,X2),X2)|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X4,X3)|~main_query_0(X1,X4))).
####
#cnf(i_0_26427, plain, (a(X1,esk3_2(X2,X1),esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
####
#cnf(i_0_26819, plain, (esk3_2(X1,esk5_2(X1,X2))=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_26977, plain, (esk3_2(X1,esk3_2(X1,X2))=X1|~main_query_0(X1,esk5_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_27376, plain, (b(X1,esk5_2(X1,X2),esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_27965, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_27968, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~lessthanorequal(X4,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X4,X2))).
####
#cnf(i_0_27969, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_27973, plain, (lessthanorequal(X1,esk5_2(X1,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X4,X2)|~main_query_0(X3,X4))).
####
#cnf(i_0_28418, plain, (b(X1,esk5_2(X1,X2),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
############################################################
#cnf(i_0_43044, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~lessthanorequal(X1,X3)|~main_query_0(X4,X2)|~main_query_0(X1,X4)|~main_query_0(X4,X1))).
####
#cnf(i_0_43046, plain, (lessthanorequal(esk3_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X4,X2)|~main_query_0(X1,X4)|~main_query_0(X4,X1))).
####
#cnf(i_0_43778, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X4)|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_43782, plain, (lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X3,X1)|~main_query_0(X2,X4)|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
#################################################################################
#cnf(i_0_12155, plain, (esk3_2(X1,X2)=X3|~lessthanorequal(X3,esk3_2(X1,X2))|~main_query_0(esk3_2(X3,X1),X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_12534, plain, (X1=esk5_2(X2,X3)|~lessthanorequal(esk5_2(X2,X3),X1)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X3,X1))).
###########################################################################################################################################
#cnf(i_0_266845, plain, (esk3_2(X1,esk3_2(X1,X2))=X1|~main_query_0(X1,esk3_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########################################################
#cnf(i_0_276880, plain, (esk3_2(X1,esk3_2(X2,X1))=X1|~main_query_0(X1,esk3_2(X1,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########################################################################################
#cnf(i_0_15189, plain, (esk3_2(X1,X2)=esk5_2(X3,X1)|~lessthanorequal(esk5_2(X3,X1),X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#
#cnf(i_0_291868, plain, (esk3_2(X1,X2)=esk5_2(X3,X1)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_292311, plain, (lessthanorequal(X1,esk3_2(X1,X3))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
######
#cnf(i_0_292479, plain, (lessthanorequal(esk5_2(X3,X1),X1)|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#
#cnf(i_0_294806, plain, (lessthanorequal(esk5_2(X1,X2),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#######
#cnf(i_0_295831, plain, (lessthanorequal(esk5_2(X2,X1),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###################################
#cnf(i_0_295447, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk5_2(X3,X2))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#####
#cnf(i_0_295451, plain, (lessthanorequal(X1,X2)|~main_query_0(esk5_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#####
#cnf(i_0_295267, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
###
#cnf(i_0_296224, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk5_2(X2,X3))|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#######
#cnf(i_0_296228, plain, (lessthanorequal(X1,X2)|~main_query_0(esk5_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
######
#cnf(i_0_295269, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X3,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
################
#cnf(i_0_296044, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_296046, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
############################################
#cnf(i_0_293778, plain, (lessthanorequal(X1,esk3_2(X1,X2))|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
############
#cnf(i_0_294810, plain, (lessthanorequal(esk5_2(X1,X2),X2)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#############################################################################################################################
#cnf(i_0_295674, plain, (esk3_2(X1,X1)=esk5_2(X2,X1)|~main_query_0(X1,X1)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
############
#cnf(i_0_302578, plain, (esk3_2(X2,X2)=esk3_2(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X2))).
#######
#cnf(i_0_303224, plain, (lessthanorequal(X1,esk3_2(X2,X2))|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X2))).
########################
#cnf(i_0_302584, plain, (esk3_2(X2,X2)=esk5_2(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X2,X2))).
############
#cnf(i_0_302589, plain, (esk3_2(X2,X2)=esk3_2(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X2,X2))).
########################################
#cnf(i_0_292885, plain, (esk3_2(X1,X2)=esk5_2(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
#####
#cnf(i_0_295143, plain, (X1=X2|~lessthanorequal(X2,esk5_2(X3,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
#########
#cnf(i_0_295144, plain, (X1=X2|~main_query_0(esk5_2(X3,X1),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
###
#cnf(i_0_295449, plain, (X1=X2|~lessthanorequal(X1,esk5_2(X3,X2))|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#######
#cnf(i_0_292242, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
####
#cnf(i_0_292476, plain, (lessthanorequal(esk5_2(X3,X1),esk5_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
#####
#cnf(i_0_295453, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(esk5_2(X3,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_295920, plain, (X1=X2|~lessthanorequal(X2,esk5_2(X1,X3))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
########
#cnf(i_0_295921, plain, (X1=X2|~main_query_0(esk5_2(X1,X3),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X1))).
####
#cnf(i_0_296226, plain, (X1=X2|~lessthanorequal(X1,esk5_2(X2,X3))|~lessthanorequal(X2,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
########
#cnf(i_0_296230, plain, (X1=X2|~lessthanorequal(X2,X1)|~main_query_0(esk5_2(X2,X3),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
#######
#cnf(i_0_303287, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X1,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X1,X1))).
################
#cnf(i_0_303575, plain, (lessthanorequal(esk3_2(X2,X1),esk3_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########################
#cnf(i_0_304907, plain, (lessthanorequal(esk5_2(X1,X2),esk5_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
############
#cnf(i_0_305012, plain, (lessthanorequal(esk5_2(X1,X2),esk3_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########################################
#cnf(i_0_306036, plain, (lessthanorequal(esk3_2(X1,X2),esk3_2(X2,X3))|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
####
#cnf(i_0_306280, plain, (lessthanorequal(esk5_2(X3,X1),esk5_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##################################################
#cnf(i_0_314052, plain, (lessthanorequal(esk5_2(X2,X1),esk3_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#####################
#cnf(i_0_293685, plain, (lessthanorequal(X1,esk3_2(X1,X2))|~main_query_0(esk3_2(X2,X3),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
######
#cnf(i_0_294760, plain, (lessthanorequal(esk5_2(X1,X2),X2)|~main_query_0(X2,esk5_2(X3,X1))|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
###########################
#cnf(i_0_308049, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3))).
############
#cnf(i_0_308898, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X1,X3)|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
############
#cnf(i_0_314670, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X1))).
############
#cnf(i_0_315520, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####################
#cnf(i_0_292310, plain, (b(X1,esk3_2(X1,X3),esk6_2(X2,X1))|~lessthanorequal(X2,X3)|~main_query_0(X2,X1)|~main_query_0(X1,X3))).
####
#cnf(i_0_292478, plain, (a(X1,esk5_2(X3,X1),esk4_2(X1,X2))|~lessthanorequal(X3,X2)|~main_query_0(X1,X2)|~main_query_0(X3,X1))).
####
#cnf(i_0_303123, plain, (a(X1,esk3_2(X2,X2),esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X2,X2))).
####
#cnf(i_0_303223, plain, (b(X1,esk3_2(X2,X2),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X2))).
####
#cnf(i_0_303264, plain, (b(X1,esk3_2(X1,X1),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X2)|~main_query_0(X1,X1))).
####
#cnf(i_0_303286, plain, (a(X1,esk3_2(X1,X1),esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X1))).
####################
#cnf(i_0_303472, plain, (a(X1,esk3_2(X2,X1),esk4_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
############
#cnf(i_0_303572, plain, (b(X1,esk3_2(X2,X1),esk6_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########################
#cnf(i_0_304909, plain, (a(X1,esk5_2(X1,X2),esk4_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_305009, plain, (b(X1,esk5_2(X1,X2),esk6_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
#####################
#cnf(i_0_292331, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X1,X4),X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
######
#cnf(i_0_292334, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X4)|~main_query_0(X2,esk3_2(X1,X4))|~main_query_0(X3,X1)|~main_query_0(X1,X4))).
###
#cnf(i_0_292422, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk5_2(X4,X2))|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
#######
#cnf(i_0_292423, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,X3)|~main_query_0(esk5_2(X4,X2),X1)|~main_query_0(X2,X3)|~main_query_0(X4,X2))).
###
#cnf(i_0_305625, plain, (a(X1,esk3_2(X1,X2),esk4_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_305725, plain, (b(X1,esk3_2(X1,X2),esk6_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
############
#cnf(i_0_306113, plain, (b(X1,esk3_2(X1,X3),esk6_2(X2,X1))|~main_query_0(X2,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_306282, plain, (a(X1,esk5_2(X3,X1),esk4_2(X1,X2))|~main_query_0(X1,X2)|~main_query_0(X3,X1)|~main_query_0(X2,X3))).
##########
#cnf(i_0_301043, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X1,X3),X2)|~main_query_0(X4,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
#####
#cnf(i_0_301045, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X1,X3))|~main_query_0(X4,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_302003, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk5_2(X3,X2))|~main_query_0(X2,X4)|~main_query_0(X3,X2)|~main_query_0(X4,X3))).
######
#cnf(i_0_302007, plain, (lessthanorequal(X1,X2)|~main_query_0(esk5_2(X3,X2),X1)|~main_query_0(X2,X4)|~main_query_0(X3,X2)|~main_query_0(X4,X3))).
########################################################
#cnf(i_0_295178, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk5_2(X4,X3))|~lessthanorequal(X3,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
#########
#cnf(i_0_295179, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(esk5_2(X4,X3),X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_295392, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk5_2(X3,X4))|~main_query_0(X2,X4)|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
#########
#cnf(i_0_295393, plain, (lessthanorequal(X1,X2)|~main_query_0(esk5_2(X3,X4),X1)|~main_query_0(X2,X4)|~main_query_0(X4,X3)|~main_query_0(X3,X4))).
###
#cnf(i_0_295448, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk5_2(X3,X2))|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###########
#cnf(i_0_295452, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk5_2(X3,X2))|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
##########
#cnf(i_0_295454, plain, (lessthanorequal(X1,X2)|~main_query_0(esk5_2(X3,X2),X4)|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
###
#cnf(i_0_295573, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(esk5_2(X4,X2),X3)|~main_query_0(X2,X4)|~main_query_0(X4,X2))).
####
#cnf(i_0_295955, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk5_2(X3,X4))|~lessthanorequal(X3,X2)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
###########
#cnf(i_0_295956, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X3,X2)|~main_query_0(esk5_2(X3,X4),X1)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
####
#cnf(i_0_296169, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,esk5_2(X3,X4))|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
#########
#cnf(i_0_296170, plain, (lessthanorequal(X1,X2)|~main_query_0(esk5_2(X3,X4),X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4)|~main_query_0(X4,X3))).
###
#cnf(i_0_296225, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk5_2(X2,X3))|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
##########
#cnf(i_0_296229, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X4,esk5_2(X2,X3))|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
##########
#cnf(i_0_296231, plain, (lessthanorequal(X1,X2)|~main_query_0(esk5_2(X2,X3),X4)|~main_query_0(X4,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X2))).
####
#cnf(i_0_296350, plain, (lessthanorequal(X1,X2)|~lessthanorequal(X1,X3)|~main_query_0(esk5_2(X2,X4),X3)|~main_query_0(X2,X4)|~main_query_0(X4,X2))).
###############################
#cnf(i_0_324171, plain, (b(X1,esk5_2(X2,X1),esk6_2(X1,X1))|~main_query_0(X1,X1)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
################################################
#cnf(i_0_292161, plain, (lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X1,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_292163, plain, (lessthanorequal(X1,esk3_2(X3,X4))|~lessthanorequal(X2,X4)|~main_query_0(X3,X1)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
########
#cnf(i_0_292480, plain, (lessthanorequal(esk5_2(X4,X1),X3)|~lessthanorequal(X1,X3)|~lessthanorequal(X4,X2)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####
#cnf(i_0_292486, plain, (lessthanorequal(esk5_2(X4,X1),X3)|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
####################################################################
#cnf(i_0_295228, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X2,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_295270, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~main_query_0(X4,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_295271, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X3,X4)|~main_query_0(X4,X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_295273, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X2,X4)|~main_query_0(X3,X4)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####################################
#cnf(i_0_296005, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_296047, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X4,X3)|~main_query_0(X4,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_296048, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X3,X4)|~main_query_0(X4,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
########
#cnf(i_0_296050, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X1,X4)|~main_query_0(X3,X4)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
#######################################################
#cnf(i_0_301227, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~lessthanorequal(X1,X2)|~main_query_0(X4,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
####
#cnf(i_0_301231, plain, (lessthanorequal(X1,esk3_2(X2,X3))|~main_query_0(X2,X1)|~main_query_0(X4,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X4))).
##########
#cnf(i_0_301823, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~lessthanorequal(X2,X3)|~main_query_0(X2,X4)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
###
#cnf(i_0_301825, plain, (lessthanorequal(esk5_2(X1,X2),X3)|~main_query_0(X3,X2)|~main_query_0(X2,X4)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
##########################################################################################################
#cnf(i_0_303057, plain, (lessthanorequal(X1,X2)|~lessthanorequal(esk3_2(X3,X3),X2)|~main_query_0(X3,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X3))).
###########
#cnf(i_0_303058, plain, (lessthanorequal(X1,X2)|~main_query_0(X2,esk3_2(X3,X3))|~main_query_0(X3,X1)|~main_query_0(X1,X3)|~main_query_0(X3,X3))).
#######
#cnf(i_0_293775, plain, (lessthanorequal(X1,esk3_2(X1,X2))|~lessthanorequal(X4,X2)|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X2))).
########
#cnf(i_0_293779, plain, (lessthanorequal(X1,esk3_2(X1,X2))|~lessthanorequal(X4,X2)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X4,X3))).
########
#cnf(i_0_293780, plain, (lessthanorequal(X1,esk3_2(X1,X2))|~lessthanorequal(X3,X4)|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X2,X4))).
########
#cnf(i_0_293786, plain, (lessthanorequal(X1,esk3_2(X1,X2))|~main_query_0(X3,X1)|~main_query_0(X1,X2)|~main_query_0(X4,X3)|~main_query_0(X2,X4))).
################
#cnf(i_0_294807, plain, (lessthanorequal(esk5_2(X1,X2),X2)|~lessthanorequal(X4,X3)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X1,X2))).
########
#cnf(i_0_294811, plain, (lessthanorequal(esk5_2(X1,X2),X2)|~lessthanorequal(X4,X3)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1))).
########
#cnf(i_0_294812, plain, (lessthanorequal(esk5_2(X1,X2),X2)|~lessthanorequal(X1,X4)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X3,X4))).
########
#cnf(i_0_294818, plain, (lessthanorequal(esk5_2(X1,X2),X2)|~main_query_0(X2,X3)|~main_query_0(X1,X2)|~main_query_0(X4,X1)|~main_query_0(X3,X4))).
########
#cnf(i_0_295356, plain, (esk5_2(esk5_2(X1,X2),X2)=X2|~main_query_0(esk5_2(X1,X2),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
############
#cnf(i_0_296133, plain, (esk5_2(esk5_2(X1,X2),X1)=X1|~main_query_0(esk5_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
################################################
#cnf(i_0_303107, plain, (lessthanorequal(X1,esk3_2(X3,X3))|~lessthanorequal(X1,X2)|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X3))).
########
#cnf(i_0_303108, plain, (lessthanorequal(X1,esk3_2(X3,X3))|~main_query_0(X2,X1)|~main_query_0(X3,X2)|~main_query_0(X2,X3)|~main_query_0(X3,X3))).
########################################################################################################################################################################################################################
#cnf(i_0_374552, plain, (esk5_2(esk3_2(X1,X2),X2)=X2|~main_query_0(esk5_2(X1,X2),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_374558, plain, (esk5_2(esk5_2(X2,X1),X2)=X2|~main_query_0(esk5_2(X1,X2),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
####
#cnf(i_0_374563, plain, (esk5_2(esk3_2(X2,X1),X2)=X2|~main_query_0(esk5_2(X1,X2),X2)|~main_query_0(X2,X1)|~main_query_0(X1,X2))).
############
#cnf(i_0_375021, plain, (esk5_2(esk3_2(X1,X2),X1)=X1|~main_query_0(esk5_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_375027, plain, (esk5_2(esk5_2(X2,X1),X1)=X1|~main_query_0(esk5_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####
#cnf(i_0_375032, plain, (esk5_2(esk3_2(X2,X1),X1)=X1|~main_query_0(esk5_2(X1,X2),X1)|~main_query_0(X1,X2)|~main_query_0(X2,X1))).
####################################################################################################################
#cnf(i_0_15246, plain, (esk3_2(X1,X2)=esk3_