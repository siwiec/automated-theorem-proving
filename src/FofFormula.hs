module FofFormula where

import Data.List

data FofFormula = EmptyFormula
                | ForAll [String] FofFormula
                | Exists [String] FofFormula
                | And FofFormula FofFormula
                | Or FofFormula FofFormula
                | Implies FofFormula FofFormula
                | Equiv FofFormula FofFormula
                | Not FofFormula
                | Predicate String [String]


instance Show FofFormula where
    show (EmptyFormula)   = "$true"
    show (ForAll vs f1)   = "! [" ++ (intercalate ", " vs) ++ "] : (" ++ (show f1) ++ ")"
    show (Exists vs f1)   = "? [" ++ (intercalate ", " vs) ++ "] : (" ++ (show f1) ++ ")"
    show (And f1 f2)      =   "(" ++ (show f1) ++ " &   " ++ (show f2) ++ ")"
    show (Or f1 f2)       =   "(" ++ (show f1) ++ " |   " ++ (show f2) ++ ")"
    show (Implies f1 f2)  =   "(" ++ (show f1) ++ " =>  " ++ (show f2) ++ ")"
    show (Equiv f1 f2)    =   "(" ++ (show f1) ++ " <=> " ++ (show f2) ++ ")"
    show (Not f1)         = "( ~ " ++ (show f1) ++ ")"
    show (Predicate n vs) = n ++ "(" ++ (intercalate ", " vs) ++ ")"



