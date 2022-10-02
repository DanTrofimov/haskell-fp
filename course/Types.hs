import Data.Char

-- Static type system during compilaton
discount :: Double -> Double -> Double -> Double
discount limit proc sum = if sum >= limit then sum * (100 - proc) / 100 else sum
standardDiscount :: Double -> Double
standardDiscount = discount 1000 5

-- Modules
twoDigits2Int :: Char -> Char -> Int
twoDigits2Int x y = if (isDigit x && isDigit y) then digitToInt x*10 + digitToInt y else 100

-- Tuples - geterogen, can contain de=ifferent types
dist :: (Double, Double) -> (Double, Double) -> Double
dist p1 p2 =  sqrt((fst p2 - fst p2) ^ 2 + (snd p2 - snd p1) ^ 2)

-- Lists - homogen
[1, 2, 3]