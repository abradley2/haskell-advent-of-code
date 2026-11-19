module Day07Test (tests) where

import qualified Day07
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 07.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 07 / part 1" sampleInput Day07.part1 Nothing,
    sampleTest "Day 07 / part 2" sampleInput Day07.part2 Nothing
  ]
