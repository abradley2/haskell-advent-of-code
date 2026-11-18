# Advent of Code

A Haskell scaffold for 12 days, with two parts per day. Each day is a named
Cabal library; the `advent-of-code` executable selects the requested solver.
Every component uses [Relude](https://github.com/kowainik/relude) as its default
prelude. The shared Cabal `mixins` configuration hides `base`'s `Prelude` and
replaces it with `Relude`, including in new modules, without explicit imports.
Cabal installs the `relude` dependency automatically.

## Run a solution

Save your puzzle input to `inputs/day-01.txt`, then run:

```sh
cabal run advent-of-code -- --day=1 --part=1 --input=inputs/day-01.txt
cabal run advent-of-code -- --day=1 --part=2 --input=inputs/day-01.txt
```

The `--` separates Cabal's options from the application's options.
Both parts receive the full contents of the same input file as a strict
`ByteString`. Puzzle and sample files are read as raw bytes without text decoding
or newline conversion. Days 1–12 and parts 1–2 are supported.
Invalid options, unreadable input files, and solver errors
exit with a nonzero status. To see all options:

```sh
cabal run advent-of-code -- --help
```

Puzzle inputs in `inputs/*.txt` are ignored by Git. Sample inputs are tracked.

## Run all sample tests

```sh
cabal run test
```

There are two sample tests per day, sharing `samples/day-NN.txt`. The initial
sample files are empty and all 24 tests report **PENDING** until you provide
expected answers. Pending tests do not invoke unfinished solvers. A wrong answer,
solver error, exception, or missing sample file fails the test run with a nonzero
status, and the remaining tests still run.

## Work on a day

For day 1:

1. Put the puzzle's sample input in `samples/day-01.txt`.
2. Implement `part1` and `part2` in `lib/day01/Day01.hs`.
3. In `test/Day01Test.hs`, replace each `Nothing` with the expected sample
   answer, such as `(Just "42")`.
4. Run `cabal run test`, then run your solution against your puzzle input.

Each part has this signature:

```haskell
import qualified Data.ByteString.Char8 as BS

type Solver = ByteString -> Either String String

part1 :: Solver
part1 input = Right (show (length (BS.lines input)))
```

Return `Right "answer"` on success or `Left "description"` on failure.
For ASCII parsing, use `Data.ByteString.Char8` functions such as `BS.lines`,
`BS.words`, and `BS.readInt`. The shared Cabal defaults include `bytestring` for
all day libraries. Answers, expected sample answers, and error messages use
`String`.
The generated stubs return clear "not implemented" errors. If both parts need
the same parsing logic, add a parser in that day's module and call it from each
part. Helper modules can be added to that library's `other-modules` in the Cabal
file.

## Layout

```text
advent-of-code.cabal                 Libraries and executable definitions
cabal.project                       Local Cabal project
app/Main.hs                         Read input, invoke solver, print answer
app/Options.hs                      Parse and validate CLI options
app/Days.hs                         Registry of all 12 day libraries
lib/common/AdventOfCode/Solution.hs  Shared Solver type
lib/day01/Day01.hs                   Day 1's part1 and part2
...
lib/day12/Day12.hs                   Day 12's part1 and part2
test/Main.hs                        Run all days' tests
test/TestSupport.hs                 Sample assertions and result reporting
test/Day01Test.hs                   Day 1's expected sample answers
...
test/Day12Test.hs                   Day 12's expected sample answers
samples/day-01.txt                  Shared sample input for day 1
...
samples/day-12.txt                  Shared sample input for day 12
inputs/                            Your local puzzle inputs
```

All libraries and executables can be built with `cabal build all`. To build one
day's library on its own, use `cabal build lib:day01`. The test runner is an
executable named `test`.
