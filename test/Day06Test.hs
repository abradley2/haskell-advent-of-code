module Day06Test (tests) where

import qualified Day06
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 06 / part 1" "samples/day-06.txt" Day06.part1 Nothing,
    sampleTest "Day 06 / part 2" "samples/day-06.txt" Day06.part2 Nothing
  ]
