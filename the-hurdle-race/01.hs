import Control.Arrow ((>>>))

main = interact $ words >>> tail >>> map read >>> solve >>> show

solve :: [Int] -> Int
solve (k: hs) = max 0 ((maximum hs) - k)
