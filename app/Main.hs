module Main (main) where

import Lib
import System.Environment
import System.Exit

main = do
    args <- getArgs
    p_args <- parse args
    putStrLn $ tac p_args

tac = unlines . reverse . lines

parse ["-h"] = usage >> exit
parse ["-v"] = version >> exit
parse [] = getContents
parse fs = concat `fmap` mapM readFile fs

usage = putStrLn "Usage: tac [-vh] [file ..]"

version = putStrLn "Haskell tac 0.1"

exit = exitWith ExitSuccess

die = exitWith (ExitFailure 1)
