{-|
Module      : DatabaseScheme
Description : Module exports datatypes and functions for managing the database scheme
Copyright   : n/a
License     : MIT
Maintainer  : mat.siwiec@gmail.com
Stability   : experimental
Portability : POSIX

DatabaseScheme exports basic types and function for creating, storing and analyzing the DatabaseScheme for analysed queries.
-}

module DatabaseScheme (
                      -- * Types
                      -- ** DatabaseScheme
                      DatabaseScheme
                      -- ** DataType
                      ,DataType
                      -- * Functions
                      -- ** databaseSchemeFromAst
                      ,databaseSchemeFromAst
                      ) where

import Language.SQL.SimpleSQL.Parse
import Language.SQL.SimpleSQL.Syntax
import qualified Data.Map.Strict as Map

data DataType = Number deriving Show-- TODO different DataTypes
type DatabaseScheme = Map.Map String (Map.Map String DataType)

databaseSchemeFromAst :: [Statement] -> DatabaseScheme
databaseSchemeFromAst ss = Map.fromList [ x | Just x <- (map addTable ss) ]

addTable :: Statement -> Maybe (String, Map.Map String DataType)
addTable (CreateTable [Name _ name] tableElements) = Just (name, Map.fromList [ x | Just x <- (map addTableElement tableElements)])
addTable _ = Nothing

addTableElement :: TableElement -> Maybe (String, DataType)
addTableElement (TableColumnDef (ColumnDef (Name _ name) (PrecTypeName [Name _ "NUMBER" ] _) _ _)) = Just (name, Number)
addTableElement _ = Nothing
