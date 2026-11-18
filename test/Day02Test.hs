module Day02Test (tests) where

import qualified Day02
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 02 / part 1" "samples/day-02.txt" Day02.part1 Nothing,
    sampleTest "Day 02 / part 2" "samples/day-02.txt" Day02.part2 Nothing
  ]
