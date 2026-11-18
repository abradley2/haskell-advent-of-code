module Main (main) where

import qualified Day01Test
import qualified Day02Test
import qualified Day03Test
import qualified Day04Test
import qualified Day05Test
import qualified Day06Test
import qualified Day07Test
import qualified Day08Test
import qualified Day09Test
import qualified Day10Test
import qualified Day11Test
import qualified Day12Test
import TestSupport (runTests)

main :: IO ()
main =
  runTests $
    concat
      [ Day01Test.tests,
        Day02Test.tests,
        Day03Test.tests,
        Day04Test.tests,
        Day05Test.tests,
        Day06Test.tests,
        Day07Test.tests,
        Day08Test.tests,
        Day09Test.tests,
        Day10Test.tests,
        Day11Test.tests,
        Day12Test.tests
      ]
