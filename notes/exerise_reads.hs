data Move = Rock | Paper | Scissors deriving (Show,Read)

-- my stupid solution
parseMove :: String -> Maybe Move
parseMove "Rock" = Just Rock
parseMove "Paper" = Just Paper
parseMove "Scissors" = Just Scissors
parseMove _ = Nothing

-- from the notes
parseMove_ :: String -> Maybe Move
parseMove_ str = case reads str of [(m, "")] -> Just m -- because ghci> :t reads "" --> reads "" :: Read a => [(a, String)]
                                   _         -> Nothing -- the indent and alignment rules of the `case` is quite strict

main = do
    print $ parseMove_ "Rock"
