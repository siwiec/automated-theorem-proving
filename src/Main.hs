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
main = do
    args <- getArgs
    case args of
        [inputFile] -> do
            putStrLn $ "% Equivallence check for file " ++ inputFile ++ "..."
            withFile inputFile ReadMode (\k -> do
                rawInput <- hGetContents k
                putStrLn $ unlines $ Prelude.map ((++) "% ") $ lines rawInput
                case runEquivalenceCheck rawInput of
                    (Left err) -> putStrLn err >> exitFailure
                    (Right tptp) -> putStrLn tptp >> exitWith ExitSuccess)
        _ -> do
            putStrLn "Usage: automated-theorem-proving inputFile" >> exitSuccess

-- | runEquivalenceCheck
runEquivalenceCheck :: String -> Either String String
runEquivalenceCheck rawInput = do
    let parsedInput :: Either ParseError [Statement]
        parsedInput = parseStatements ansi2011 "" Nothing rawInput
    case parsedInput of
        (Left err) -> fail $ peFormattedError err
        (Right sqlAst) -> case translateStatements sqlAst of
            (Left err) -> fail err
            (Right tptp) -> return tptp
