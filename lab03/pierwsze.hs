pierwsze :: [Int] -> [Int]
pierwsze = \input -> filter (\el -> el == 2 || (el > 2 && mod el 2 /= 0 && mod el 3 /= 0)) input

