module Day08Test (tests) where

import qualified Day08
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 08.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 08 / part 1" sampleInput Day08.part1 Nothing,
    sampleTest "Day 08 / part 2" sampleInput Day08.part2 Nothing
  ]
