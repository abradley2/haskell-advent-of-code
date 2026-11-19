module Day12Test (tests) where

import qualified Day12
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 12.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 12 / part 1" sampleInput Day12.part1 Nothing,
    sampleTest "Day 12 / part 2" sampleInput Day12.part2 Nothing
  ]
