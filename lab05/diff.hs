{-
Napisz program czytający plik i zapisujący w osobnym pliku słowa, które nie występują w '/usr/share/dict/words'. Sprawdzanie nie powinno być case-sensitive.
-}

import System.IO
import Data.Char
import Data.List.Split
import Data.List

removePunctuation :: String -> String
removePunctuation xs = [x | x <- xs, notElem x ",.?!-:;\""]

main = do  
    contents <- readFile "/usr/share/dict/words"
    let linesOfFiles = lines $ map toLower contents

    contents_to_check <- readFile "machine.txt"
    let word_to_check = words $ map toLower $ removePunctuation contents_to_check

    writeFile "not_found.txt" $ concat $ intersperse "\n" $ filter (\el -> notElem el linesOfFiles) word_to_check
