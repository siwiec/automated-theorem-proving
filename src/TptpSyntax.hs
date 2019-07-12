{-|
Module      : TptpSyntax
Description : Module for managing the TPTP syntax formulas
Copyright   :
License     : MIT
Maintainer  : mat.siwiec@gmail.com
Stability   : experimental
Portability : POSIX

Module for managing the TPTP syntax formulas
-}
module TptpSyntax (
                  -- * Types
                  -- ** TptpFormula
                  TptpFormula(..)
                  -- ** Role
                  ,Role(..)
                  ) where

import FofFormula

-- | Definition of the TPTP formula role.
data Role = Axiom | Conjecture | Definition
-- | TptpFormula stores all the parameters for the TPTP predicates.
data TptpFormula = TptpFofFormula {name        :: String
                                  ,role        :: Role
                                  ,formula     :: FofFormula
                                  ,annotations :: Maybe String
                                  }

instance Show Role where
    show Axiom      = "axiom"
    show Conjecture = "conjecture"
    show Definition = "definition"

instance Show TptpFormula where
    show (TptpFofFormula n r f Nothing) = "fof("
                                            ++ (show n)
                                            ++ ", "
                                            ++ (show r)
                                            ++ ", "
                                            ++ (show f)
                                            ++ ").\n"
    show (TptpFofFormula n r f (Just a)) = "fof("
                                            ++ (show n)
                                            ++ ", "
                                            ++ (show r)
                                            ++ ", "
                                            ++ (show f)
                                            ++ ", "
                                            ++ (show a)
                                            ++ ").\n"
