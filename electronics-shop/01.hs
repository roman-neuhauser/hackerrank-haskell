import Control.Arrow ((>>>))
import Data.Function ((&))
import Data.List (sortOn)

main = interact $ words >>> map read >>> solve >>> show

solve :: [Int] -> Int
solve (b: k: d: ksds) =
  sums ks ds
  & sortOn (negate)
  & flip (++) [-1]
  & dropWhile (> b)
  & head
  where
    (ks, ds) = splitAt k ksds

sums :: [Int] -> [Int] -> [Int]
sums ks ds = flip map ks (flip map ds . (+)) & concat
