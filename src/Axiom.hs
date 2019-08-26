module Axiom
    ( buildAxioms
    ) where

import FofFormula
import TptpSyntax

import Data.Either
import Data.List as List

buildAxioms :: [TptpFormula] -> [TptpFormula]
buildAxioms xs =
    [ TptpFofFormula
          "reflexivity_of_equality"
          Axiom
          (ForAll ["X"] (Predicate "equal" ["X", "X"]))
          Nothing
    , TptpFofFormula
          "symmetry_of_equality"
          Axiom
          (ForAll ["X", "Y"] (Implies (Predicate "equal" ["X", "Y"]) (Predicate "equal" ["Y", "X"])))
          Nothing
    , TptpFofFormula
          "transitivity_of_equality"
          Axiom
          (ForAll
               ["X", "Y", "Z"]
               (Implies
                    (And (Predicate "equal" ["X", "Y"]) (Predicate "equal" ["Y", "Z"]))
                    (Predicate "equal" ["X", "Z"])))
          Nothing
    , TptpFofFormula
          "reflexivity_of_less_than_or_equal"
          Axiom
          (ForAll ["X"] (Predicate "lessThanOrEqual" ["X", "X"]))
          Nothing
    , TptpFofFormula
          "antisymmetry_of_less_than_or_equal"
          Axiom
          (ForAll
               ["X", "Y"]
               (Implies
                    (And (Predicate "lessThanOrEqual" ["X", "Y"])
                         (Predicate "lessThanOrEqual" ["Y", "X"]))
                    (Predicate "equal" ["X", "Y"])))
          Nothing
    , TptpFofFormula
          "transitivity_of_less_than_or_equal"
          Axiom
          (ForAll
               ["X", "Y", "Z"]
               (Implies
                    (And (Predicate "lessThanOrEqual" ["X", "Y"])
                         (Predicate "lessThanOrEqual" ["Y", "Z"]))
                    (Predicate "lessThanOrEqual" ["X", "Z"])))
          Nothing
    ] ++
    (concat $
     Prelude.map buildEqualAxiom $
     removeDuplicates $
     concat $ Prelude.map getPredicatesWithArity [x | (TptpFofFormula _ _ x _) <- xs])
  where
    buildEqualAxiom :: (String, Int) -> [TptpFormula]
    buildEqualAxiom (predicate, arity) =
        (map (\(p, a) ->
                  TptpFofFormula
                      (predicate ++ "_substitution_" ++ (show a))
                      Axiom
                      (ForAll
                           ["X_" ++ show i | i <- [0 .. arity]]
                           (Implies
                                (And (Predicate "equal" ["X_0", "X_" ++ (show a)])
                                     (Predicate p ["X_" ++ show i | i <- [1 .. arity]]))
                                (Predicate
                                     p
                                     [ "X_" ++ show i
                                     | i <- [1 .. (a - 1)] ++ [0] ++ [(a + 1) .. arity]
                                     ])))
                      Nothing)
             (zip (cycle [predicate]) [1 .. arity]))


{- |
    Removes suplicated values from list (only the first occurence is preserved).
-}
removeDuplicates :: (Eq a) => [a] -> [a]
removeDuplicates =
    List.foldl
        (\seen x ->
             if x `elem` seen
                 then seen
                 else seen ++ [x])
        []
