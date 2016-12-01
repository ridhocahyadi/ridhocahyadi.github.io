{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_webku (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
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
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\CAHYADI\\webku\\.stack-work\\install\\8824621d\\bin"
libdir     = "C:\\Users\\CAHYADI\\webku\\.stack-work\\install\\8824621d\\lib\\x86_64-windows-ghc-8.0.1\\webku-0.1.0.0-G1yATsPATi48xelG0WU2wR"
datadir    = "C:\\Users\\CAHYADI\\webku\\.stack-work\\install\\8824621d\\share\\x86_64-windows-ghc-8.0.1\\webku-0.1.0.0"
libexecdir = "C:\\Users\\CAHYADI\\webku\\.stack-work\\install\\8824621d\\libexec"
sysconfdir = "C:\\Users\\CAHYADI\\webku\\.stack-work\\install\\8824621d\\etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "webku_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "webku_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "webku_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "webku_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "webku_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
