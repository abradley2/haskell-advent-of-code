module Day04Test (tests) where

import qualified Day04
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 04 / part 1" "samples/day-04.txt" Day04.part1 Nothing,
    sampleTest "Day 04 / part 2" "samples/day-04.txt" Day04.part2 Nothing
  ]
