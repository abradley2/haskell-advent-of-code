module Day11Test (tests) where

import qualified Day11
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 11.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 11 / part 1" sampleInput Day11.part1 Nothing,
    sampleTest "Day 11 / part 2" sampleInput Day11.part2 Nothing
  ]
