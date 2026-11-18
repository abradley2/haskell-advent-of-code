module Day11Test (tests) where

import qualified Day11
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 11 / part 1" "samples/day-11.txt" Day11.part1 Nothing,
    sampleTest "Day 11 / part 2" "samples/day-11.txt" Day11.part2 Nothing
  ]
