module Day08Test (tests) where

import qualified Day08
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 08 / part 1" "samples/day-08.txt" Day08.part1 Nothing,
    sampleTest "Day 08 / part 2" "samples/day-08.txt" Day08.part2 Nothing
  ]
