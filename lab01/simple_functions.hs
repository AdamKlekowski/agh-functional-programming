{-  Proszę zdefiniować własne wersje funkcji:
    head,
    length,
    take,
    map,
    ++
-}

head'1 :: [x] -> x
head'1 x = x !! 0

head'2 :: [x] -> x
head'2 (x:_) = x

length' :: [x] -> Int
length' [] = 0
length' (_:xs) = length' xs + 1

take' :: Int -> [x] -> x
take' n x = x !! n

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

plusplus :: [a] -> [a] -> [a]
plusplus [] y = y
plusplus (x:xs) y = x : plusplus xs y
