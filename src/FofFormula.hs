{-|
Module      : FofFormula
Description : Implementation of the first-order logic statements generation in the TPTP syntax
Copyright   : n/a
License     : MIT
Maintainer  : mat.siwiec@gmail.com
Stability   : experimental
Portability : POSIX

Module FofFormula implements the functions to translate first-order logic statements into the TPTP syntax.
-}
module FofFormula (
                  -- * Types
                  -- ** FofFormula
                  FofFormula(..)
                  ) where

import Data.List

-- | FofFormula stores all available logical sentences, which can be translated into first-order logic TPTP syntax.
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



