module Main (main) where

import Days (solverFor)
import Options (Options (..), parseOptions, usage)

main :: IO ()
main = do
  args <- getArgs
  case parseOptions args of
    Left message -> die (message ++ "\n\n" ++ usage)
    Right Nothing -> putStr usage
    Right (Just options) -> run options

run :: Options -> IO ()
run options =
  case solverFor (day options) (part options) of
    Left err -> putStrLn err
    Right solve -> readFileBS (inputPath options) >>= print . solve
