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
                      -- ** getColumnNames
                      ,getColumnNames
                      ) where

import Language.SQL.SimpleSQL.Parse
import Language.SQL.SimpleSQL.Syntax
import qualified Data.Map.Ordered as Map

-- | DataType contains all the implemented data types
data DataType = Number deriving Show

-- | Type for storing the database scheme. It maps table names to column names and column names to their types.
data DatabaseScheme = Database (Map.OMap String (Map.OMap String DataType))

instance Show DatabaseScheme where
    show (Database databaseScheme) = concat $ map showTable $ Map.toAscList databaseScheme
        where
            showTable :: (String, (Map.OMap String DataType)) -> String
            showTable (tableName, columns) = "% " ++ tableName ++ ":\n" ++ (unlines ["%\t" ++ columnName ++ ": " ++ show columnType | (columnName, columnType) <- (Map.assocs columns)])

-- | databaseSchemeFromAst creates the DatabaseScheme value based on the abstract syntax tree of the DDL.
databaseSchemeFromAst :: [Statement] -> DatabaseScheme
databaseSchemeFromAst ss = Database (Map.fromList [ x | Just x <- (map addTable ss) ])

addTable :: Statement -> Maybe (String, Map.OMap String DataType)
addTable (CreateTable [Name _ name] tableElements) = Just (name, Map.fromList [ x | Just x <- (map addTableElement tableElements)])
addTable _ = Nothing

addTableElement :: TableElement -> Maybe (String, DataType)
addTableElement (TableColumnDef (ColumnDef (Name _ name) (PrecTypeName [Name _ "NUMBER" ] _) _ _)) = Just (name, Number)
addTableElement _ = Nothing

-- | Function returns the list of column names for the given table. If the table does not exist and empty list is returned.
getColumnNames :: String -- ^ table name
               -> DatabaseScheme -- ^ database scheme
               -> [String] -- ^ column names
getColumnNames tableName (Database databaseScheme) = case Map.lookup tableName databaseScheme of
    Nothing -> []
    (Just table) -> Prelude.map fst $ Map.assocs table


