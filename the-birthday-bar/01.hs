import Control.Arrow ((>>>))
import Data.Function ((&))

main = interact $ words >>> map read >>> solve >>> show

solve :: [Int] -> Int
solve (xs) =
  ss
    & chunks m
    & filter ((d ==) . sum)
    & length
  where
    (n, ss, d, m) = destruct xs

chunks m [] = []
chunks m xs = h:t
  where
    (h, _) = splitAt m xs
    xs' = (tail xs)
    t = if (length xs') < m
          then []
          else chunks m xs'

destruct xs = (n, ss, d, m)
  where
    n = head xs
    ss = take n (tail xs)
    [d, m] = drop n (tail xs)
