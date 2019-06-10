import Control.Arrow ((>>>))
import Data.Function ((&))

main = interact $ words >>> tail >>> ints >>> solve >>> show

ints :: [String] -> [Int]
ints = map read

solve :: [Int] -> Int
solve (k : xs) =
  length [
    () | (i, xi) <- zip [0..] xs
       , (j, xj) <- zip [0..] xs
       , i < j
       , 0 == (xi + xj) `mod` k
  ]
