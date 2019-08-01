{-|
Module      : Main
Description : Main module for invoking the TPTP translation functions
Copyright   :
License     : MIT
Maintainer  : mat.siwiec@gmail.com
Stability   : experimental
Portability : POSIX

Module implements input parsing and TPTP output generation.
-}
module Main where

import System.Environment
import Text.Show.Pretty
import System.IO
import System.Exit

import Language.SQL.SimpleSQL.Parse
       (parseStatements
       ,ParseError
       ,peFormattedError)

import Language.SQL.SimpleSQL.Syntax (ansi2011, Statement)

import Translate

import TptpSyntax (TptpFormula)

-- | main
main :: IO ()
main = do
    args <- getArgs
    case args of
        [inputFile] -> do
            putStrLn $ "% Equivallence check for file " ++ inputFile ++ "..."
            withFile inputFile ReadMode (\k -> do
                rawInput <- hGetContents k
                runEquivalenceCheck rawInput)
        _ -> do
            putStrLn "Usage: automated-theorem-proving inputFile"

-- | runEquivalenceCheck
runEquivalenceCheck :: String -> IO ()
runEquivalenceCheck rawInput = do
    let parsedInput :: Either ParseError [Statement]
        parsedInput = parseStatements ansi2011 "" Nothing rawInput
    case parsedInput of
        (Left err) -> (error . peFormattedError) err
        (Right sqlAst) -> translateStatements sqlAst
