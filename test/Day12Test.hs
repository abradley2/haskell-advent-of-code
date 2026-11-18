module Day12Test (tests) where

import qualified Day12
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 12 / part 1" "samples/day-12.txt" Day12.part1 Nothing,
    sampleTest "Day 12 / part 2" "samples/day-12.txt" Day12.part2 Nothing
  ]
