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
        ["--ast", databaseSchemeFile, queryFile] -> do
                putStrLn $ "Running test for query " ++ queryFile ++ " with database scheme " ++ databaseSchemeFile ++ "...\n"
                withFile databaseSchemeFile ReadMode (\k -> do
                    rawDatabaseScheme <- hGetContents k
                    withFile queryFile ReadMode (\k -> do
                        rawQuery <- hGetContents k
                        runTest rawDatabaseScheme rawQuery))

        [databaseSchemeFile, query1File, query2File] ->
            withFile databaseSchemeFile ReadMode (\k -> do
                databaseScheme <- hGetContents k
                withFile query1File ReadMode (\l -> do
                    query1 <- hGetContents l
                    withFile query2File ReadMode (\m -> do
                        query2 <- hGetContents m
                        runEquivalenceCheck databaseScheme query1 query2)))
        _ -> do
            putStrLn "Usage: automated-theorem-proving databaseScheme query1 query2"

-- | runTest
runTest :: String -> String -> IO ()
runTest rawDatabaseScheme rawQuery = do
    let parsedDatabaseScheme :: Either ParseError [Statement]
        parsedDatabaseScheme = parseStatements ansi2011 "" Nothing rawDatabaseScheme
    case parsedDatabaseScheme of
        (Left err) -> (error . peFormattedError) err
        (Right databaseSchemeAst) -> do
            let parsedQuery :: Either ParseError [Statement]
                parsedQuery = parseStatements ansi2011 "" Nothing rawQuery
            case parsedQuery of
                (Left err) -> (error . peFormattedError) err
                (Right queryAst) -> do
                    queryTptpFormat <- translateStatements databaseSchemeAst queryAst
                    case queryTptpFormat of
                        (Left err) -> do
                            putStrLn err
                            exitWith $ ExitFailure 1
                        (Right (databaseScheme, query)) -> do
                            putStrLn databaseScheme
                            putStrLn query
                            exitSuccess

-- | runEquivalenceCheck
runEquivalenceCheck :: String -> String -> String -> IO ()
runEquivalenceCheck databaseScheme query1 query2 = do
    putStrLn "ERROR"
    exitWith $ ExitFailure 1
