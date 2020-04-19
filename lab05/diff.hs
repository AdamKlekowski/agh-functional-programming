import System.IO
import Data.Char
import Data.List.Split
import Data.List

main = do  
    contents <- readFile "/usr/share/dict/words"
    let linesOfFiles = lines $ map toLower contents

    contents_to_check <- readFile "machine.txt"
    let word_to_check = words $ map toLower contents_to_check

    writeFile "not_found.txt" $ concat (intersperse "\n" $ filter (\el -> notElem el linesOfFiles) word_to_check)
