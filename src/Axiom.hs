module Axiom (buildAxioms) where


import TptpSyntax
import FofFormula
import Data.Either

buildAxioms :: [(String, Int)] -> [TptpFormula]
buildAxioms [] = [
    TptpFofFormula "reflexivity_of_equality"
                   Axiom
                   (ForAll ["X"] (Predicate "equal" ["X", "X"]))
                   Nothing,

    TptpFofFormula "symmetry_of_equality"
                   Axiom
                   (ForAll ["X", "Y"] (
                       Implies
                           (Predicate "equal" ["X", "Y"])
                           (Predicate "equal" ["Y", "X"])
                   ))
                   Nothing,

    TptpFofFormula "transitivity_of_equality"
                   Axiom
                   (ForAll ["X", "Y", "Z"] (
                       Implies
                           (And (Predicate "equal" ["X", "Y"])
                               (Predicate "equal" ["Y", "X"]))
                           (Predicate "equal" ["X", "Z"])
                   ))
                   Nothing
    ]
buildAxioms ((predicate, arity):xs) = (buildEqualAxiom predicate arity) ++ (buildAxioms xs)
    where
        buildEqualAxiom :: String -> Int -> [TptpFormula]
        buildEqualAxiom predicate arity =
                (map (\(p, a)->
                    TptpFofFormula (predicate ++ "_substitution_" ++ (show a))
                        Axiom
                        --(let substitutedFofFormula = Data.Either.fromRight EmptyFormula (applyFofFormula ["X_0"] (["X_" ++ (show a)], (Predicate p ["X_" ++ (show i) | i <- [1..arity]]))) in
                        (ForAll ["X_" ++ show i | i <- [0..arity]]
                            (Implies
                                (And (Predicate "equal" ["X_0", "X_" ++ (show a)])
                                    (Predicate p ["X_" ++ show i | i <- [1..arity]]))
                                (Predicate p ["X_" ++ show i | i <- [1..(a-1)] ++ [0] ++ [(a+1)..arity]])
                )) Nothing) (zip (cycle [predicate]) [1..arity]))
