-- Tutaj ma się znaleźć zadanie numer 3. 
-- Trzy operacje oparte o monadę State
-- 1. insert
-- 2. search
-- 3. remove
-- Proszę dopisać w Main jakiś przykład użycia operacji w notacji `do`

import Control.Monad.State  

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Eq)

myTree :: Tree Int
myTree = Node 1 (Node 2 Empty (Node 3 Empty Empty)) (Node 4 Empty Empty)

--runState test Empty
test = do
   insert'' 4
   insert'' 10
   insert'' 2
   search'' 2
   remove'' 2
   search'' 2

--insert (wstawienie elementu)
insert :: (Ord a) => Tree a -> a -> Tree a
insert Empty x = Node x Empty Empty
insert (Node v t1 t2) x 
        | v == x = Node v t1 t2
        | v < x = Node v t1 (insert t2 x)
        | v > x = Node v (insert t1 x) t2

insert'' :: (Ord a) => a -> State (Tree a) ()
insert'' val = state $ \t -> ((), insert t val)

--search (sprawdzanie czy element jest w drzewie) 
search :: (Ord a) => (Tree a) -> a -> Bool
search Empty _ = False
search (Node v t1 t2) x 
        | x == v = True
        | x < v = search t1 x 
        | x > v = search t2 x

search'' :: (Ord a) => a -> State (Tree a) Bool
search'' v = state $ \t -> (search t v, t)

--remove (usuwanie elementu)*
remove :: (Ord a) => Tree a -> a -> Tree a
remove (Node v t1 t2) x
        | v < x = Node v t1 (remove t2 x)
        | v > x = Node v (remove t1 x) t2
remove (Node v Empty t2) x = t2
remove (Node v t1 Empty) x = t1
remove (Node v t1 t2) x = insert' t1 t2
remove Empty _ = Empty

insert' :: (Ord a) => Tree a -> Tree a -> Tree a
insert' x Empty = x
insert' Empty x = x
insert' (Node v t1 t2) (Node x x1 x2) 
        | v == x = Node v t1 t2
        | v < x = Node v t1 (insert' t2 (Node x x1 x2))
        | v > x = Node v (insert' t1 (Node x x1 x2)) t2

remove'' :: (Ord a) => a -> State (Tree a) a
remove'' v = state $ \t -> (v, remove t v)
