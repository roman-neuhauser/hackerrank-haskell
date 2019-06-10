import Control.Arrow ((>>>))

main = interact $ words >>> tail >>> map read >>> solve >>> map show >>> unwords

solve :: [Int] -> [Int]
solve xs =
  map (flip ($) xs) $ map ((length .) . records) [maximum, minimum]

records f (x:xs) =
  take ((length rs) - 1) rs
  where
    rs = foldl (record f) [x] xs

record f r x
  | (f [x, head r]) == (head r) = r
  | otherwise = x:r
