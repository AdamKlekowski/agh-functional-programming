pierwsze :: [Int] -> [Int]

pierwsze = \input -> filter (\el -> isPrime el) input

isPrime :: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime n | (length [x | x <- [2..(n-1)], mod n x == 0]) > 0 = False
	  | otherwise = True
