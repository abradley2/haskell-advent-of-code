module Days (solverFor) where

import Day01 qualified
import Day02 qualified
import Day03 qualified
import Day04 qualified
import Day05 qualified
import Day06 qualified
import Day07 qualified
import Day08 qualified
import Day09 qualified
import Day10 qualified
import Day11 qualified
import Day12 qualified

solverFor :: Int -> Int -> Either String (ByteString -> Either String String)
solverFor day part = do
  (_, (part1, part2)) <-
    maybe
      (Left $ "Invalid Day " <> show day)
      Right
      $ find ((== day) . fst) days
  case part of
    1 -> pure part1
    2 -> pure part2
    _ -> Left $ "Invalid part number: " <> show part

days :: [(Int, (ByteString -> Either String String, ByteString -> Either String String))]
days =
  [ (1, (Day01.part1, Day01.part2))
  , (2, (Day02.part1, Day02.part2))
  , (3, (Day03.part1, Day03.part2))
  , (4, (Day04.part1, Day04.part2))
  , (5, (Day05.part1, Day05.part2))
  , (6, (Day06.part1, Day06.part2))
  , (7, (Day07.part1, Day07.part2))
  , (8, (Day08.part1, Day08.part2))
  , (9, (Day09.part1, Day09.part2))
  , (10, (Day10.part1, Day10.part2))
  , (11, (Day11.part1, Day11.part2))
  , (12, (Day12.part1, Day12.part2))
  ]
