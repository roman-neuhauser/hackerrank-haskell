import Control.Arrow ((>>>))

main = interact $ words >>> tail >>> ints >>> solve >>> unlines

ints :: [String] -> [Int]
ints = map read

solve :: [Int] -> [String]
solve [] = []
solve (n : k : xs) =
  [yesno $ cancelled k (take n xs)] ++ solve (drop n xs)
  where
    yesno True = "YES"
    yesno False = "NO"
    cancelled k ts =
      (length $ filter (<= 0) ts) < k
