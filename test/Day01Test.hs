module Day01Test (tests) where

import qualified Day01
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 01 / part 1" "samples/day-01.txt" Day01.part1 Nothing,
    sampleTest "Day 01 / part 2" "samples/day-01.txt" Day01.part2 Nothing
  ]
