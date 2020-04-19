import System.Random

main = do
    num <- randomIO :: IO Int
    let num_0_10 = mod num 10
    guessing num_0_10 3

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
