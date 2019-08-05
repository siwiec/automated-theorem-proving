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
                  -- ** ApplicableFofFormula
                   ApplicableFofFormula
                  -- ** FofFormula
                  ,FofFormula(..)
                  -- * Functions
                  -- ** applyFofFormula
                  ,applyFofFormula
                  ) where

import Data.Maybe ( fromMaybe)
import Data.List as List
import Data.Map.Strict as Map
import Data.Char

-- | ApplicableFofFormula is an FofFormula along with the list of needed global variables
type ApplicableFofFormula = ([String], FofFormula)

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
    show (EmptyFormula)               = "$true"
    show (ForAll vars f1)             = "( ! [" ++ (intercalate ", " (Prelude.map (Prelude.map Data.Char.toUpper) vars)) ++ "] : (" ++ (show f1) ++ "))"
    show (Exists vars f1)             = "( ? [" ++ (intercalate ", " (Prelude.map (Prelude.map Data.Char.toUpper) vars)) ++ "] : (" ++ (show f1) ++ "))"
    show (And f1 f2)                  = "(" ++ (show f1) ++ " & " ++ (show f2) ++ ")"
    show (Or f1 f2)                   = "(" ++ (show f1) ++ " | " ++ (show f2) ++ ")"
    show (Implies f1 f2)              = "(" ++ (show f1) ++ " => " ++ (show f2) ++ ")"
    show (Equiv f1 f2)                = "(" ++ (show f1) ++ " <=> " ++ (show f2) ++ ")"
    show (Not f1)                     = "( ~ " ++ (show f1) ++ ")"
    show (Predicate "equal" [s1, s2]) = "(" ++ s1 ++ " = " ++ s2 ++ ")"
    show (Predicate n vars)           = "( " ++ (Prelude.map Data.Char.toLower n) ++ "(" ++ (intercalate ", " (Prelude.map (Prelude.map Data.Char.toUpper) vars)) ++ "))"


applyFofFormula :: [String]
                -> ApplicableFofFormula
                -> Either String FofFormula
applyFofFormula [] ([], fofFormula)            = return fofFormula
applyFofFormula (v:vs) ((g:gs), (EmptyFormula))   = return EmptyFormula
applyFofFormula (v:vs) ((g:gs), (ForAll vars f1))   = do -- Shadowing???
    f1_new <- applyFofFormula (v:vs) ((g:gs), f1)
    return (ForAll vars f1_new)
applyFofFormula (v:vs) ((g:gs), (Exists vars f1))   = do -- Shadowing???
    f1_new <- applyFofFormula (v:vs) ((g:gs), f1)
    return (Exists vars f1_new)
applyFofFormula (v:vs) ((g:gs), (And f1 f2))      = do
    f1_new <- applyFofFormula (v:vs) ((g:gs), f1)
    f2_new <- applyFofFormula (v:vs) ((g:gs), f2)
    return (And f1_new f2_new)
applyFofFormula (v:vs) ((g:gs), (Or f1 f2))       = do
    f1_new <- applyFofFormula (v:vs) ((g:gs), f1)
    f2_new <- applyFofFormula (v:vs) ((g:gs), f2)
    return (Or f1_new f2_new)
applyFofFormula (v:vs) ((g:gs), (Implies f1 f2))  = do
    f1_new <- applyFofFormula (v:vs) ((g:gs), f1)
    f2_new <- applyFofFormula (v:vs) ((g:gs), f2)
    return (Implies f1_new f2_new)
applyFofFormula (v:vs) ((g:gs), (Equiv f1 f2))    = do
    f1_new <- applyFofFormula (v:vs) ((g:gs), f1)
    f2_new <- applyFofFormula (v:vs) ((g:gs), f2)
    return (Equiv f1_new f2_new)
applyFofFormula (v:vs) ((g:gs), (Not f1))         = do
    f1_new <- applyFofFormula (v:vs) ((g:gs), f1)
    return (Not f1_new)
applyFofFormula (v:vs) ((g:gs), (Predicate n vars)) = do
    let substitutionMap = Map.fromList $ zip (v:vs) (g:gs)
    let defaultLookup substitutionMap var = fromMaybe var (Map.lookup var substitutionMap)
    let vars_new = Prelude.map (defaultLookup substitutionMap) vars
    return (Predicate n vars_new)
applyFofFormula _ _ = fail "Incorrect number of variables when applying a FofFormula"
