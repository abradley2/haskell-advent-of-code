module Day09Test (tests) where

import qualified Day09
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 09.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 09 / part 1" sampleInput Day09.part1 Nothing,
    sampleTest "Day 09 / part 2" sampleInput Day09.part2 Nothing
  ]
