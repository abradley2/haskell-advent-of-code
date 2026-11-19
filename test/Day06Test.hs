module Day06Test (tests) where

import qualified Day06
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 06.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 06 / part 1" sampleInput Day06.part1 Nothing,
    sampleTest "Day 06 / part 2" sampleInput Day06.part2 Nothing
  ]
