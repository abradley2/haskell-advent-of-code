module Day03Test (tests) where

import qualified Day03
import TestSupport (Test, sampleTest)

tests :: [Test]
tests =
  [ sampleTest "Day 03 / part 1" "samples/day-03.txt" Day03.part1 Nothing,
    sampleTest "Day 03 / part 2" "samples/day-03.txt" Day03.part2 Nothing
  ]
