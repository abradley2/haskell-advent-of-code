module Day05Test (tests) where

import qualified Day05
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 05.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 05 / part 1" sampleInput Day05.part1 Nothing,
    sampleTest "Day 05 / part 2" sampleInput Day05.part2 Nothing
  ]
