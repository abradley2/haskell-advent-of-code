module Day05Test (tests) where

import qualified Day05
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 05 / part 1" "samples/day-05.txt" Day05.part1 Nothing,
    sampleTest "Day 05 / part 2" "samples/day-05.txt" Day05.part2 Nothing
  ]
