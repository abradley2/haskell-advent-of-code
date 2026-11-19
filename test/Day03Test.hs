module Day03Test (tests) where

import qualified Day03
import TestSupport (Test, sampleTest)

sampleInput :: ByteString
sampleInput =
  """
  TODO: replace with the sample input for day 03.
  """

tests :: [Test]
tests =
  [ sampleTest "Day 03 / part 1" sampleInput Day03.part1 Nothing,
    sampleTest "Day 03 / part 2" sampleInput Day03.part2 Nothing
  ]
