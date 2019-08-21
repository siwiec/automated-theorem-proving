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
                   FofFormula (..)
                  -- * Functions
                  -- ** getVariables
                  ,getVariables
                  -- ** getFreeVariables
                  ,getFreeVariables
                  -- ** getBoundVariables
                  ,getBoundVariables
                  -- ** getPredicatesWithArity
                  ,getPredicatesWithArity
                  -- ** getPredicates
                  ,getPredicates
                  -- ** substituteVariable
                  ,substituteVariable
                  -- ** substitutePredicate
                  ,substitutePredicate
                  -- ** toPredicate
                  ,toPredicate
                  -- ** toVariable
                  ,toVariable
                  -- ** toPredicates
                  ,toPredicates
                  -- ** toVariables
                  ,toVariables
                  ) where

import Data.Maybe ( fromMaybe )
import Data.List as List
import Data.Map.Strict as Map
import Data.Char

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
                deriving Eq


instance Show FofFormula where
    show (EmptyFormula)               = "$true"
    show (ForAll vars f1)             = "( ! [" ++ (intercalate ", " (toVariables vars)) ++ "] : (" ++ (show f1) ++ "))"
    show (Exists vars f1)             = "( ? [" ++ (intercalate ", " (toVariables vars)) ++ "] : (" ++ (show f1) ++ "))"
    show (And f1 f2)                  = "(" ++ (show f1) ++ " & " ++ (show f2) ++ ")"
    show (Or f1 f2)                   = "(" ++ (show f1) ++ " | " ++ (show f2) ++ ")"
    show (Implies f1 f2)              = "(" ++ (show f1) ++ " => " ++ (show f2) ++ ")"
    show (Equiv f1 f2)                = "(" ++ (show f1) ++ " <=> " ++ (show f2) ++ ")"
    show (Not f1)                     = "( ~ " ++ (show f1) ++ ")"
    show (Predicate "equal" [s1, s2]) = "(" ++ toVariable s1 ++ " = " ++ toVariable s2 ++ ")"
    show (Predicate predicate vars)   = "( " ++ toPredicate predicate ++ "(" ++ (intercalate ", " (toVariables vars)) ++ "))"

getVariables :: FofFormula
             -> [String]
getVariables EmptyFormula               = []
getVariables (ForAll vars f1)           = removeDuplicates $ (toVariables vars) ++ (getVariables f1)
getVariables (Exists vars f1)           = removeDuplicates $ (toVariables vars) ++ (getVariables f1)
getVariables (And f1 f2)                = removeDuplicates $ (getVariables f1) ++ (getVariables f2)
getVariables (Or f1 f2)                 = removeDuplicates $ (getVariables f1) ++ (getVariables f2)
getVariables (Implies f1 f2)            = removeDuplicates $ (getVariables f1) ++ (getVariables f2)
getVariables (Equiv f1 f2)              = removeDuplicates $ (getVariables f1) ++ (getVariables f2)
getVariables (Not f1)                   = getVariables f1
getVariables (Predicate predicate vars) = removeDuplicates $ toVariables vars

getFreeVariables :: FofFormula
                 -> [String]
getFreeVariables EmptyFormula               = []
getFreeVariables (ForAll vars f1)           = removeDuplicates [v | v <- (getFreeVariables f1), v `notElem` (toVariables vars)]
getFreeVariables (Exists vars f1)           = removeDuplicates [v | v <- (getFreeVariables f1), v `notElem` (toVariables vars)]
getFreeVariables (And f1 f2)                = removeDuplicates $ (getFreeVariables f1) ++ (getFreeVariables f2)
getFreeVariables (Or f1 f2)                 = removeDuplicates $ (getFreeVariables f1) ++ (getFreeVariables f2)
getFreeVariables (Implies f1 f2)            = removeDuplicates $ (getFreeVariables f1) ++ (getFreeVariables f2)
getFreeVariables (Equiv f1 f2)              = removeDuplicates $ (getFreeVariables f1) ++ (getFreeVariables f2)
getFreeVariables (Not f1)                   = getFreeVariables f1
getFreeVariables (Predicate predicate vars) = removeDuplicates $ toVariables vars

getBoundVariables :: FofFormula
                  -> [String]
getBoundVariables x = [v | v <- (getVariables x), v `notElem` (getFreeVariables x)]

getPredicatesWithArity :: FofFormula
              -> [(String, Int)]
getPredicatesWithArity EmptyFormula       = []
getPredicatesWithArity (ForAll vars f1)   = getPredicatesWithArity f1
getPredicatesWithArity (Exists vars f1)   = getPredicatesWithArity f1
getPredicatesWithArity (And f1 f2)        = removeDuplicates $ (getPredicatesWithArity f1) ++ (getPredicatesWithArity f2)
getPredicatesWithArity (Or f1 f2)         = removeDuplicates $ (getPredicatesWithArity f1) ++ (getPredicatesWithArity f2)
getPredicatesWithArity (Implies f1 f2)    = removeDuplicates $ (getPredicatesWithArity f1) ++ (getPredicatesWithArity f2)
getPredicatesWithArity (Equiv f1 f2)      = removeDuplicates $ (getPredicatesWithArity f1) ++ (getPredicatesWithArity f2)
getPredicatesWithArity (Not f1)           = getPredicatesWithArity f1
getPredicatesWithArity (Predicate predicate vars) = [(toPredicate predicate, length vars)]

getPredicates :: FofFormula
              -> [String]
getPredicates = (Prelude.map fst) . getPredicatesWithArity

substituteVariable :: String
                   -> String
                   -> FofFormula
                   -> Either String FofFormula
substituteVariable old new formula
    | new `elem` (getVariables formula) = fail $ "Cannot use variable name \"" ++ new ++ "\"; variable alredy exists in the formula"
    | otherwise = case formula of
        EmptyFormula       -> return EmptyFormula
        (ForAll vars f1)   -> do newF1 <- substituteVariable old new f1 ; return (ForAll (toVariables vars) newF1)
        (Exists vars f1)   -> do newF1 <- substituteVariable old new f1 ; return (Exists (toVariables vars) newF1)
        (And f1 f2)        -> do newF1 <- substituteVariable old new f1 ; newF2 <- substituteVariable old new f2 ; return (And newF1 newF2)
        (Or f1 f2)         -> do newF1 <- substituteVariable old new f1 ; newF2 <- substituteVariable old new f2 ; return (Or newF1 newF2)
        (Implies f1 f2)    -> do newF1 <- substituteVariable old new f1 ; newF2 <- substituteVariable old new f2 ; return (Implies newF1 newF2)
        (Equiv f1 f2)      -> do newF1 <- substituteVariable old new f1 ; newF2 <- substituteVariable old new f2 ; return (Equiv newF1 newF2)
        (Not f1)           -> do newF1 <- substituteVariable old new f1 ; return (Not newF1)
        (Predicate predicate vars) -> return (Predicate predicate [if toVariable x == old then new else toVariable x | x <- vars])


substitutePredicate :: String
                   -> String
                   -> FofFormula
                   -> Either String FofFormula
substitutePredicate old new formula
    | new `elem` (getPredicates formula) = fail $ "Cannot use predicate name \"" ++ new ++ "\"; predicate alredy exists in the formula"
    | otherwise = case formula of
        EmptyFormula       -> return EmptyFormula
        (ForAll vars f1)   -> do newF1 <- substitutePredicate old new f1 ; return (ForAll vars newF1)
        (Exists vars f1)   -> do newF1 <- substitutePredicate old new f1 ; return (Exists vars newF1)
        (And f1 f2)        -> do newF1 <- substitutePredicate old new f1 ; newF2 <- substitutePredicate old new f2 ; return (And newF1 newF2)
        (Or f1 f2)         -> do newF1 <- substitutePredicate old new f1 ; newF2 <- substitutePredicate old new f2 ; return (Or newF1 newF2)
        (Implies f1 f2)    -> do newF1 <- substitutePredicate old new f1 ; newF2 <- substitutePredicate old new f2 ; return (Implies newF1 newF2)
        (Equiv f1 f2)      -> do newF1 <- substitutePredicate old new f1 ; newF2 <- substitutePredicate old new f2 ; return (Equiv newF1 newF2)
        (Not f1)           -> do newF1 <- substitutePredicate old new f1 ; return (Not newF1)
        (Predicate predicate vars) -> return (Predicate (if toPredicate predicate == old then new else toPredicate predicate) vars)

toPredicate = Prelude.map Data.Char.toLower
toVariable = Prelude.map Data.Char.toUpper
toPredicates = Prelude.map toPredicate
toVariables = Prelude.map toVariable


removeDuplicates :: (Eq a) => [a] -> [a]
removeDuplicates = List.foldl (\seen x -> if x `elem` seen then seen else seen ++ [x]) []
