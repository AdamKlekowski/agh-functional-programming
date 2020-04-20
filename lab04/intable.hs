{-
Wykorzystując wiedzę o tym jak tworzyć typeclassy, stwórz jedną o nazwie Intable, która pozwoli na konwersję [Char] to Int poprzez funkcję toInt. Użyj jej jako ograniczenie w funkcji mySuperAdd:

	mySuperAdd :: (Intable a, Intable b) => a -> b -> Int
	mySuperAdd x y = toInt x + toInt y
	ghci> mySuperAdd "123" "12"
	135
	ghci> mySuperAdd "123" (12::Int)
	135
-}

{-# LANGUAGE FlexibleInstances #-}

class Intable a where
    toInt :: a -> Int

instance Intable [Char] where
    toInt x = read x :: Int

instance Intable Int where
    toInt x = x

mySuperAdd :: (Intable a, Intable b) => a->b->Int
mySuperAdd x y = toInt x + toInt y
