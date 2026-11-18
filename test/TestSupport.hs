module TestSupport (Test, sampleTest, runTests) where

import AdventOfCode.Solution (Solver)
import Control.Exception (try)
import Paths_advent_of_code (getDataFileName)

data Test = SampleTest String FilePath Solver (Maybe String)

data TestResult = Passed | Pending | Failed String
  deriving (Show)

-- | Set the expected answer to 'Just "answer"' to enable an assertion.
-- 'Nothing' leaves the test pending while the day's solution is unfinished.
sampleTest :: String -> FilePath -> Solver -> Maybe String -> Test
sampleTest = SampleTest

runTests :: [Test] -> IO ()
runTests tests = do
  results <- mapM runTest tests
  let passed = length [() | Passed <- results]
      pending = length [() | Pending <- results]
      failed = length [() | Failed _ <- results]
  putStrLn
    ( "\n"
        ++ show passed ++ " passed, "
        ++ show pending ++ " pending, "
        ++ show failed ++ " failed."
    )
  unless (failed == 0) exitFailure

runTest :: Test -> IO TestResult
runTest test@(SampleTest name _ _ _) = do
  attempt <- try $ do
    result <- runSample test
    -- Keep solver exceptions inside this test so later tests still run.
    evaluateNF_ (show result :: String)
    pure result
  let result = case (attempt :: Either SomeException TestResult) of
        Left err -> Failed (displayException err)
        Right outcome -> outcome
  putStrLn $ case result of
    Passed -> "PASS " ++ name
    Pending -> "PENDING " ++ name ++ " (set an expected sample answer)"
    Failed message -> "FAIL " ++ name ++ "\n  " ++ message
  pure result

runSample :: Test -> IO TestResult
runSample (SampleTest _ samplePath solve expected) = do
  path <- getDataFileName samplePath
  input <- readFileBS path
  case expected of
    Nothing -> pure Pending
    Just expectedAnswer ->
      pure $ case solve input of
        Left message -> Failed ("Solver returned an error: " ++ message)
        Right actual
          | actual == expectedAnswer -> Passed
          | otherwise ->
              Failed
                ( "Expected " ++ show expectedAnswer
                    ++ ", got " ++ show actual
                )
