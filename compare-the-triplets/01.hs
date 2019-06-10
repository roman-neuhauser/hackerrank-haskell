import Control.Arrow ((>>>))
import Data.List (transpose)

eval :: [Int] -> [Int]
eval [x, y] | x > y = [1, 0]
            | x < y = [0, 1]
            | otherwise = [0, 0]

-- c o d
main =
  interact
  $ lines
    >>> map (words >>> map (read :: String -> Int))
    >>> transpose
    >>> map eval
    >>> transpose
    >>> map (sum >>> show)
    >>> unwords
