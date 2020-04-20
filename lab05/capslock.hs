{-
Napisz program wczytujący plik i zapisujący jego zawartość w wersji CAPSLOCK.
-}

import System.IO
import Data.Char
 
main = do  
    contents <- readFile "machine.txt"
    writeFile "machine_capslock.txt" $ map toUpper contents
