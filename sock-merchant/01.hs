import Control.Arrow ((>>>))
import Data.List (group, sort)

main = interact $ words
  >>> tail
  >>> map read
  >>> solve
  >>> show

solve :: [Int] -> Int
solve = sort
  >>> group
  >>> map length
  >>> map (flip div 2)
  >>> sum
