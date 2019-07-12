{-|
Module      : TptpSyntax
Description : Module exports datatypes and functions for managing the database scheme
Copyright   :
License     : MIT
Maintainer  : mat.siwiec@gmail.com
Stability   : experimental
Portability : POSIX

Here is a longer description of this module, containing some
commentary with @some markup@.
-}
module TptpSyntax (
                  -- * Types
                  -- ** TptpFormula
                  TptpFormula(..)
                  -- ** Role
                  ,Role(..)
                  ) where

import FofFormula

-- * Types
data Role = Axiom | Conjecture | Definition
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
