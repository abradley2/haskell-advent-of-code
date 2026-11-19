module Day04Test (tests) where

import qualified Day04
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 04.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 04 / part 1" sampleInput Day04.part1 Nothing,
    sampleTest "Day 04 / part 2" sampleInput Day04.part2 Nothing
  ]
