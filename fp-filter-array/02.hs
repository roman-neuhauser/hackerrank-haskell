import Control.Arrow ((>>>))

main = interact $ words >>> map read >>> solve >>> map show >>> unlines

solve :: [Int] -> [Int]
solve (x:xs) = filter (<x) xs