import Control.Arrow ((>>>))

main = interact $ words >>> tail >>> map read >>> solve >>> map show >>> unwords

solve :: [Int] -> [Int]
solve xs =
  [his, los]
  where
    his = (length $ records maximum xs) - 1
    los = (length $ records minimum xs) - 1

records f (x:xs) = foldl (record f) [x] xs

record f r x
  | (f [x, head r]) == (head r) = r
  | otherwise = x:r
