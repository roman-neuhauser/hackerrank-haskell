import Control.Arrow ((>>>))
import Data.Function ((&))

main = interact $ words >>> map read >>> solve

solve :: [Int] -> String
solve (n: k: xs)
  | c == o    = "Bon Appetit"
  | otherwise = show $ c - o
  where
    (b, [c]) = splitAt n xs
    o = (sum b - b !! k) `div` 2
