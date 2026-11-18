module Day10Test (tests) where

import qualified Day10
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 10 / part 1" "samples/day-10.txt" Day10.part1 Nothing,
    sampleTest "Day 10 / part 2" "samples/day-10.txt" Day10.part2 Nothing
  ]
