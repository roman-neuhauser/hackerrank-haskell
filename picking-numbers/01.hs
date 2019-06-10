import Control.Arrow ((>>>))
import Data.Function ((&))
import Data.List (sortOn)

main = interact $ words >>> tail >>> map read >>> solve >>> show

solve :: [Int] -> Int
solve xs = xs
  & map (flip filter xs . neighbor)
  & map length
  & sortOn negate
  & head

neighbor :: Int -> Int -> Bool
neighbor x x' = dist >= 0 && dist <= 1
  where dist = x - x'
