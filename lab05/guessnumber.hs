{-
Napisz grę „Guess a number”, gdzie system losuje losową liczbę od 0-10,
a użytkownik ma 3 próby odgadnięcia tej liczby, za każdym razem otrzymując podpowiedź,
że wpisana liczba była mniejsza, lub większa od szukanej.
-}

import System.Random

main = do
    num <- randomIO :: IO Int
    guessing (mod num 10) 3

guessing num n = do
  if (n<=0) then do putStrLn "You lost!"
  else do
          putStrLn "Enter your guess:"
          usr_answer <- getLine
          case compare (read usr_answer) num of
            LT -> do putStrLn "Too low!"
                     guessing num (n-1)
            GT -> do putStrLn "Too high!"
                     guessing num (n-1)
            EQ -> putStrLn "You Win!"
