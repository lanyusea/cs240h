data Move = Rock | Paper | Scissors
     deriving (Eq, Read, Show, Enum, Bounded)

data Outcome = Lose | Tie | Win deriving (Show, Eq, Ord)

outcome:: Move->Move->Outcome
outcome Rock Scissors = Win
outcome Paper Rock = Win
outcome Scissors Paper = Win
-- outcome Rock Paper = Lose
-- outcome Paper Scissors = Lose
-- outcome Scissors Rock = Lose
-- outcome a b = Tie

outcome a b | a == b = Tie 
            | otherwise = Lose -- better implementation from the notes

main = 
    print (result, result_, result__)
    where
        result = outcome Rock Paper
        result_ = outcome Scissors Paper
        result__ = outcome Paper Paper
