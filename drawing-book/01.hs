import Control.Arrow ((>>>))

main = interact $ words >>> map read >>> solve >>> show

solve :: [Int] -> Int
solve [ps, p] = min front back
  where
    front = p `div` 2
    back = ps `div` 2 - front
