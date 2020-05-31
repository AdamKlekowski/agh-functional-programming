-- Wszystkie trzy zadania mają znaleźć się w tym pliku
-- 1. typ Tree
-- 2. Implementacja Functora dla drzewa
-- 3. Implementacja Monady dla drzewa
-- 4. Operacje na drzewie jako stateful computations
-- 5. Przykładowe użycie drzewa w notacji 'do'.

import Control.Applicative
import Control.Monad.State  

data Tree a = Empty | Leaf a | Node (Tree a) (Tree a)
	deriving (Show)

instance Functor Tree where
      fmap f Empty        = Empty
      fmap f (Leaf x)     = Leaf (f x)
      fmap f (Node l r) = Node (fmap f l) (fmap f r)

instance Applicative Tree where
   pure x = Leaf x
   (Leaf f) <*> (Leaf x) = Leaf (f x)
   (Leaf f) <*> (Node l r) = Node (fmap f l) (fmap f r)
   _ <*> _ = Empty

instance Monad Tree where
	return=Leaf
	x >>= f = mergeTrees(fmap f x)

mergeTrees:: Tree (Tree a) -> Tree a
mergeTrees Empty = Empty
mergeTrees (Leaf x) = x
mergeTrees (Node l r) = Node (mergeTrees l) (mergeTrees r)
