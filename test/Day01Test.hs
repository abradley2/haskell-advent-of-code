module Day01Test (tests) where

import qualified Day01
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 01.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 01 / part 1" sampleInput Day01.part1 Nothing,
    sampleTest "Day 01 / part 2" sampleInput Day01.part2 Nothing
  ]
