import Control.Arrow ((>>>))
import Data.Function ((&))

main = interact $ words >>> tail >>> ints >>> solve >>> show

ints :: [String] -> [Int]
ints = map read

solve :: [Int] -> Int
solve (k : xs) =
    pairs xs
  & map (uncurry zip)
  & concat
  & map (uncurry (+))
  & filter (isMultipleOf k)
  & length

pairs :: [Int] -> [([Int], [Int])]
pairs (x:xs) = (replicate (length xs) x, xs) : pairs xs
pairs [] = []

isMultipleOf :: Int -> Int -> Bool
isMultipleOf k s = 0 == s `mod` k
