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
        [] -> do
              -- read from stdin
              c <- getContents
              doIt c
        ["-s", sql] -> do
              -- parse arg given
              doIt sql
        [f] ->
              -- read file
              withFile f ReadMode (\h -> do
                  x <- hGetContents h
                  doIt x)
        _ -> do
            putStrLn "use no arguments to stream sql from stdin, e.g.:\n\
                     \  cat some.sql | SimpleSQLParserExample\n\
                     \n\
                     \use -s to parse sql on command line, e.g.:\n\
                     \  SimpleSQLParserExample -s \"select * from t\"\n\
                     \use a single arg to parse a file, e.g.\n\
                     \  SimpleSQLParserExample some.sql"


doIt :: String -> IO ()
doIt src = do
    let parsed :: Either ParseError [Statement]
        parsed = parseStatements ansi2011 "" Nothing src
    case parsed of
        (Left err) -> (error . peFormattedError) err
        (Right ast) -> do
            translated <- translateStatements ast
            case translated of
                (Left err) -> do
                    putStrLn err
                    exitWith $ ExitFailure 1
                (Right tptp) -> putStrLn tptp >> exitSuccess
