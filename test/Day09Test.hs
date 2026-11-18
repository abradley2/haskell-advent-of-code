module Day09Test (tests) where

import qualified Day09
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 09 / part 1" "samples/day-09.txt" Day09.part1 Nothing,
    sampleTest "Day 09 / part 2" "samples/day-09.txt" Day09.part2 Nothing
  ]
