module Options (Options (..), parseOptions, usage) where

import System.Console.GetOpt
  ( ArgDescr (NoArg, ReqArg),
    ArgOrder (Permute),
    OptDescr (Option),
    getOpt,
    usageInfo,
  )

data Options = Options
  { day :: Int,
    part :: Int,
    inputPath :: FilePath
  }
  deriving (Eq, Show)

data Flag
  = DayFlag String
  | PartFlag String
  | InputFlag FilePath
  | HelpFlag
  deriving (Eq)

flags :: [OptDescr Flag]
flags =
  [ Option [] ["day"] (ReqArg DayFlag "DAY") "Day to run (1-12)",
    Option [] ["part"] (ReqArg PartFlag "PART") "Part to run (1 or 2)",
    Option [] ["input"] (ReqArg InputFlag "FILE") "Path to the puzzle input",
    Option ['h'] ["help"] (NoArg HelpFlag) "Show this help"
  ]

usage :: String
usage =
  usageInfo
    "Usage: advent-of-code --day=DAY --part=PART --input=FILE"
    flags

parseOptions :: [String] -> Either String (Maybe Options)
parseOptions args =
  case getOpt Permute flags args of
    (_, _, errors@(_ : _)) -> Left (concat errors)
    (_, positional@(_ : _), _) ->
      Left ("Unexpected arguments: " ++ toString (unwords (map toText positional)))
    (options, [], [])
      | HelpFlag `elem` options -> Right Nothing
      | otherwise -> do
          dayValue <- required "--day" [value | DayFlag value <- options]
          partValue <- required "--part" [value | PartFlag value <- options]
          path <- required "--input" [value | InputFlag value <- options]
          selectedDay <- boundedNumber "--day" 1 12 dayValue
          selectedPart <- boundedNumber "--part" 1 2 partValue
          if null path
            then Left "--input must be a non-empty file path."
            else Right (Just (Options selectedDay selectedPart path))

required :: String -> [String] -> Either String String
required name [] = Left ("Missing required option: " ++ name)
required _ [value] = Right value
required name _ = Left ("Option may only be supplied once: " ++ name)

boundedNumber :: String -> Int -> Int -> String -> Either String Int
boundedNumber name lower upper value =
  case readMaybe value :: Maybe Integer of
    Just number
      | number >= toInteger lower && number <= toInteger upper ->
          Right (fromInteger number)
    _ ->
      Left
        ( name
            ++ " must be an integer between "
            ++ show lower
            ++ " and "
            ++ show upper
            ++ "."
        )
