module Day07Test (tests) where

import qualified Day07
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 07 / part 1" "samples/day-07.txt" Day07.part1 Nothing,
    sampleTest "Day 07 / part 2" "samples/day-07.txt" Day07.part2 Nothing
  ]
