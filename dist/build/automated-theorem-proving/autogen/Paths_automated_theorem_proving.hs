{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_automated_theorem_proving (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/osboxes/.cabal/bin"
libdir     = "/home/osboxes/.cabal/lib/x86_64-linux-ghc-8.2.2/automated-theorem-proving-0.1.0.0-4bX4lBTZQRbGbUCvmwpZpl"
dynlibdir  = "/home/osboxes/.cabal/lib/x86_64-linux-ghc-8.2.2"
datadir    = "/home/osboxes/.cabal/share/x86_64-linux-ghc-8.2.2/automated-theorem-proving-0.1.0.0"
libexecdir = "/home/osboxes/.cabal/libexec/x86_64-linux-ghc-8.2.2/automated-theorem-proving-0.1.0.0"
sysconfdir = "/home/osboxes/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "automated_theorem_proving_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "automated_theorem_proving_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "automated_theorem_proving_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "automated_theorem_proving_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "automated_theorem_proving_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "automated_theorem_proving_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
