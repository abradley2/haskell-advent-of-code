module Day02Test (tests) where

import qualified Day02
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 02.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 02 / part 1" sampleInput Day02.part1 Nothing,
    sampleTest "Day 02 / part 2" sampleInput Day02.part2 Nothing
  ]
