import Control.Arrow ((>>>))
import Data.Function ((&), on)
import Data.List (group, sort, sortBy)

main = interact $ words >>> tail >>> ints >>> solve >>> show

ints :: [String] -> [Int]
ints = map read

solve :: [Int] -> Int
solve =
  sort
  >>> group
  >>> sortBy (flip compare `on` length)
  >>> head
  >>> head
