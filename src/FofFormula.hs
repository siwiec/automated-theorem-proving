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
module FofFormula
    ( FofFormula(..)
                  -- * Functions
                  -- ** getVars
    , getVars
                  -- ** getFreeVars
    , getFreeVars
                  -- ** getBoundVars
    , getBoundVars
                  -- ** getPredicatesWithArity
    , getPredicatesWithArity
                  -- ** getPredicates
    , getPredicates
                  -- ** substituteVariable
    , substituteVariable
                  -- ** substitutePredicate
    , substitutePredicate
                  -- ** toPredicate
    , toPredicate
                  -- ** toVariable
    , toVariable
                  -- ** toPredicates
    , toPredicates
                  -- ** toVariables
    , toVariables
                  -- ** simplifyFofFormula
    , simplifyFofFormula
    ) where

import Data.Char
import Data.List as List
import Data.Map.Strict as Map
import Data.Maybe (fromMaybe)

-- | FofFormula stores all available logical sentences, which can be translated into first-order logic TPTP syntax.
data FofFormula
    = EmptyFormula
    | ForAll [String] FofFormula
    | Exists [String] FofFormula
    | And FofFormula FofFormula
    | Or FofFormula FofFormula
    | Implies FofFormula FofFormula
    | Equiv FofFormula FofFormula
    | Not FofFormula
    | Predicate String [String]
    deriving (Eq, Ord)

instance Show FofFormula where
    show (EmptyFormula) = "$true"
    show (ForAll vars f1) =
        "( ! [" ++ (intercalate ", " (toVariables vars)) ++ "] : (" ++ (show f1) ++ "))"
    show (Exists vars f1) =
        "( ? [" ++ (intercalate ", " (toVariables vars)) ++ "] : (" ++ (show f1) ++ "))"
    show (And f1 f2) = "(" ++ (show f1) ++ " & " ++ (show f2) ++ ")"
    show (Or f1 f2) = "(" ++ (show f1) ++ " | " ++ (show f2) ++ ")"
    show (Implies f1 f2) = "(" ++ (show f1) ++ " => " ++ (show f2) ++ ")"
    show (Equiv f1 f2) = "(" ++ (show f1) ++ " <=> " ++ (show f2) ++ ")"
    show (Not f1) = "( ~ " ++ (show f1) ++ ")"
    show (Predicate "equal" [s1, s2]) = "(" ++ toVariable s1 ++ " = " ++ toVariable s2 ++ ")"
    show (Predicate predicate vars) =
        "( " ++ toPredicate predicate ++ "(" ++ (intercalate ", " (toVariables vars)) ++ "))"

getVars :: FofFormula -> [String]
getVars EmptyFormula       = []
getVars (ForAll vars f1)   = removeDuplicates $ (toVariables vars) ++ (getVars f1)
getVars (Exists vars f1)   = removeDuplicates $ (toVariables vars) ++ (getVars f1)
getVars (And f1 f2)        = removeDuplicates $ (getVars f1) ++ (getVars f2)
getVars (Or f1 f2)         = removeDuplicates $ (getVars f1) ++ (getVars f2)
getVars (Implies f1 f2)    = removeDuplicates $ (getVars f1) ++ (getVars f2)
getVars (Equiv f1 f2)      = removeDuplicates $ (getVars f1) ++ (getVars f2)
getVars (Not f1)           = getVars f1
getVars (Predicate _ vars) = removeDuplicates $ toVariables vars

getFreeVars :: FofFormula -> [String]
getFreeVars EmptyFormula       = []
getFreeVars (ForAll vars f1)   = removeDuplicates [v | v <- (getFreeVars f1), v `notElem` (toVariables vars)]
getFreeVars (Exists vars f1)   = removeDuplicates [v | v <- (getFreeVars f1), v `notElem` (toVariables vars)]
getFreeVars (And f1 f2)        = removeDuplicates $ (getFreeVars f1) ++ (getFreeVars f2)
getFreeVars (Or f1 f2)         = removeDuplicates $ (getFreeVars f1) ++ (getFreeVars f2)
getFreeVars (Implies f1 f2)    = removeDuplicates $ (getFreeVars f1) ++ (getFreeVars f2)
getFreeVars (Equiv f1 f2)      = removeDuplicates $ (getFreeVars f1) ++ (getFreeVars f2)
getFreeVars (Not f1)           = getFreeVars f1
getFreeVars (Predicate _ vars) = removeDuplicates $ toVariables vars

getBoundVars :: FofFormula -> [String]
getBoundVars x = [v | v <- (getVars x), v `notElem` (getFreeVars x)]

getPredicatesWithArity :: FofFormula -> [(String, Int)]
getPredicatesWithArity EmptyFormula               = []
getPredicatesWithArity (ForAll vars f1)           = getPredicatesWithArity f1
getPredicatesWithArity (Exists vars f1)           = getPredicatesWithArity f1
getPredicatesWithArity (And f1 f2)                = removeDuplicates $ (getPredicatesWithArity f1) ++ (getPredicatesWithArity f2)
getPredicatesWithArity (Or f1 f2)                 = removeDuplicates $ (getPredicatesWithArity f1) ++ (getPredicatesWithArity f2)
getPredicatesWithArity (Implies f1 f2)            = removeDuplicates $ (getPredicatesWithArity f1) ++ (getPredicatesWithArity f2)
getPredicatesWithArity (Equiv f1 f2)              = removeDuplicates $ (getPredicatesWithArity f1) ++ (getPredicatesWithArity f2)
getPredicatesWithArity (Not f1)                   = getPredicatesWithArity f1
getPredicatesWithArity (Predicate predicate vars) = [(toPredicate predicate, length vars)]

getPredicates :: FofFormula -> [String]
getPredicates = (Prelude.map fst) . getPredicatesWithArity

substituteVariable :: String -> String -> FofFormula -> Either String FofFormula
substituteVariable old new formula
    | new `elem` (getVars formula) =
        fail $ "Cannot use variable name \"" ++ new ++ "\"; variable alredy exists in the formula"
    | otherwise =
        case formula of
            EmptyFormula -> return EmptyFormula
            (ForAll vars f1) -> do
                newF1 <- substituteVariable old new f1
                return (ForAll (toVariables vars) newF1)
            (Exists vars f1) -> do
                newF1 <- substituteVariable old new f1
                return (Exists (toVariables vars) newF1)
            (And f1 f2) -> do
                newF1 <- substituteVariable old new f1
                newF2 <- substituteVariable old new f2
                return (And newF1 newF2)
            (Or f1 f2) -> do
                newF1 <- substituteVariable old new f1
                newF2 <- substituteVariable old new f2
                return (Or newF1 newF2)
            (Implies f1 f2) -> do
                newF1 <- substituteVariable old new f1
                newF2 <- substituteVariable old new f2
                return (Implies newF1 newF2)
            (Equiv f1 f2) -> do
                newF1 <- substituteVariable old new f1
                newF2 <- substituteVariable old new f2
                return (Equiv newF1 newF2)
            (Not f1) -> do
                newF1 <- substituteVariable old new f1
                return (Not newF1)
            (Predicate predicate vars) ->
                return
                    (Predicate
                         predicate
                         [ if toVariable x == old
                             then new
                             else toVariable x
                         | x <- vars
                         ])

substitutePredicate :: String -> String -> FofFormula -> Either String FofFormula
substitutePredicate old new formula
    | new `elem` (getPredicates formula) =
        fail $ "Cannot use predicate name \"" ++ new ++ "\"; predicate alredy exists in the formula"
    | otherwise =
        case formula of
            EmptyFormula -> return EmptyFormula
            (ForAll vars f1) -> do
                newF1 <- substitutePredicate old new f1
                return (ForAll vars newF1)
            (Exists vars f1) -> do
                newF1 <- substitutePredicate old new f1
                return (Exists vars newF1)
            (And f1 f2) -> do
                newF1 <- substitutePredicate old new f1
                newF2 <- substitutePredicate old new f2
                return (And newF1 newF2)
            (Or f1 f2) -> do
                newF1 <- substitutePredicate old new f1
                newF2 <- substitutePredicate old new f2
                return (Or newF1 newF2)
            (Implies f1 f2) -> do
                newF1 <- substitutePredicate old new f1
                newF2 <- substitutePredicate old new f2
                return (Implies newF1 newF2)
            (Equiv f1 f2) -> do
                newF1 <- substitutePredicate old new f1
                newF2 <- substitutePredicate old new f2
                return (Equiv newF1 newF2)
            (Not f1) -> do
                newF1 <- substitutePredicate old new f1
                return (Not newF1)
            (Predicate predicate vars) ->
                return
                    (Predicate
                         (if toPredicate predicate == old
                              then new
                              else toPredicate predicate)
                         vars)

toPredicate  = Prelude.map Data.Char.toLower
toVariable   = Prelude.map Data.Char.toUpper
toPredicates = Prelude.map toPredicate
toVariables  = Prelude.map toVariable

removeDuplicates :: (Eq a) => [a] -> [a]
removeDuplicates =
    List.foldl
        (\seen x ->
             if x `elem` seen
                 then seen
                 else seen ++ [x])
        []

-- Simplify until nothing more to do
simplifyFofFormula :: FofFormula -> FofFormula
simplifyFofFormula formula
    | formula /= basicSimplified = simplifyFofFormula basicSimplified
    | otherwise = formula
  where
    basicSimplified = basicSimplify formula

basicSimplify :: FofFormula -> FofFormula
basicSimplify (ForAll vars EmptyFormula) = EmptyFormula
basicSimplify (ForAll vars f1) = ForAll vars (basicSimplify f1)
basicSimplify (Exists vars EmptyFormula) = EmptyFormula
basicSimplify (Exists vars f1) = Exists vars (basicSimplify f1)
basicSimplify (And f1 f2)
    | f1 == EmptyFormula = basicSimplify f2
    | f2 == EmptyFormula = basicSimplify f1
    | f1 == f2 = basicSimplify f1
    | f1 < f2 = And (basicSimplify f1) (basicSimplify f2)
    | f1 > f2 = And (basicSimplify f2) (basicSimplify f1)
basicSimplify (Or f1 f2)
    | f1 == EmptyFormula = EmptyFormula
    | f2 == EmptyFormula = EmptyFormula
    | f1 == f2 = basicSimplify f1
    | f1 < f2 = Or (basicSimplify f1) (basicSimplify f2)
    | f1 > f2 = Or (basicSimplify f2) (basicSimplify f1)
basicSimplify (Implies EmptyFormula f2) = basicSimplify f2
basicSimplify (Implies f1 f2) = Implies (basicSimplify f1) (basicSimplify f2)
basicSimplify (Equiv f1 f2)
    | f1 == EmptyFormula = basicSimplify f2
    | f2 == EmptyFormula = basicSimplify f1
    | f1 == f2 = EmptyFormula
    | f1 < f2 = Equiv (basicSimplify f1) (basicSimplify f2)
    | f1 > f2 = Equiv (basicSimplify f2) (basicSimplify f1)
basicSimplify (Not (Not f1)) = basicSimplify f1
basicSimplify (Not f1) = Not (basicSimplify f1)
basicSimplify (Predicate "equal" [v1, v2])
    | v1 == v2 = EmptyFormula
    | v1 < v2 = Predicate "equal" [v1, v2]
    | v1 > v2 = Predicate "equal" [v2, v1]
basicSimplify formula = formula
