import System.IO
import Data.Char
 
main = do  
    contents <- readFile "machine.txt"
    let up_conntents = map toUpper contents
    writeFile "machine_capslock.txt" up_conntents
