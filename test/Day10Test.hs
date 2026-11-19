module Day10Test (tests) where

import qualified Day10
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 10.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 10 / part 1" sampleInput Day10.part1 Nothing,
    sampleTest "Day 10 / part 2" sampleInput Day10.part2 Nothing
  ]
