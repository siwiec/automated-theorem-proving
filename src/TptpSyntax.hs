module TptpSyntax (TptpFormula(..)
                  ,Role
                  ) where


data Role = Axiom | Conjecture | Definition
data TptpFormula = TptpFofFormula {name        :: String
                                  ,role        :: Role
                                  ,formula     :: String
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
