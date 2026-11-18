module Main (main) where

import Days (solverFor)
import Options (Options (..), parseOptions, usage)
import System.IO.Error (tryIOError)

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
    Nothing -> die "No solver is registered for that day and part."
    Just solve -> do
      inputResult <- tryIOError (readFileBS (inputPath options))
      case inputResult of
        Left err -> die ("Could not read input: " ++ show err)
        Right input ->
          case solve input of
            Left message -> die message
            Right answer -> putStrLn answer
