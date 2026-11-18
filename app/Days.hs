module Days (solverFor) where

import AdventOfCode.Solution (Solver)
import qualified Day01
import qualified Day02
import qualified Day03
import qualified Day04
import qualified Day05
import qualified Day06
import qualified Day07
import qualified Day08
import qualified Day09
import qualified Day10
import qualified Day11
import qualified Day12

solverFor :: Int -> Int -> Maybe Solver
solverFor day part = do
  (_, (part1, part2)) <- find ((== day) . fst) days
  case part of
    1 -> Just part1
    2 -> Just part2
    _ -> Nothing

days :: [(Int, (Solver, Solver))]
days =
  [ (1, (Day01.part1, Day01.part2)),
    (2, (Day02.part1, Day02.part2)),
    (3, (Day03.part1, Day03.part2)),
    (4, (Day04.part1, Day04.part2)),
    (5, (Day05.part1, Day05.part2)),
    (6, (Day06.part1, Day06.part2)),
    (7, (Day07.part1, Day07.part2)),
    (8, (Day08.part1, Day08.part2)),
    (9, (Day09.part1, Day09.part2)),
    (10, (Day10.part1, Day10.part2)),
    (11, (Day11.part1, Day11.part2)),
    (12, (Day12.part1, Day12.part2))
  ]
