import Control.Arrow ((>>>))

main = interact $ words >>> tail >>> map read >>> solve >>> map show >>> unwords

solve :: [Int] -> [Int]
solve xs =
  [records' maximum xs, records' minimum xs]
  where
    records' f x = length $ records f x

records f (x:xs) =
  take ((length rs) - 1) rs
  where
    rs = foldl (record f) [x] xs

record f r x
  | (f [x, head r]) == (head r) = r
  | otherwise = x:r
