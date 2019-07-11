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

main :: IO ()
main = do
    args <- getArgs
    case args of
        ("-t":xs) -> do
            mapM_ (\x -> do
                putStrLn $ "Running test for file " ++ x ++ "...\n"
                withFile x ReadMode (\k -> do
                    sql <- hGetContents k
                    runTest sql)
                runTest x) xs
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

runTest :: String -> IO ()
runTest sql = do
    let parsed :: Either ParseError [Statement]
        parsed = parseStatements ansi2011 "" Nothing sql
    case parsed of
        (Left err) -> (error . peFormattedError) err
        (Right ast) -> do
            translated <- translateStatements ast
            case translated of
                (Left err) -> do
                    putStrLn err
                    exitWith $ ExitFailure 1
                (Right tptp) -> putStrLn tptp >> exitSuccess

runEquivalenceCheck :: String -> String -> String -> IO ()
runEquivalenceCheck databaseScheme query1 query2 = do
    putStrLn "ERROR"
    exitWith $ ExitFailure 1
