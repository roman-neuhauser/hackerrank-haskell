import Control.Arrow ((>>>))

main = interact $ words >>> tail >>> map read >>> solve >>> unlines

solve :: [Int] -> [String]
solve = queries >>> map solve1

solve1 :: [Int] -> String
solve1 [a, b, c] =
  case compare ac bc of
    LT -> "Cat A"
    GT -> "Cat B"
    EQ -> "Mouse C"
  where
    ac = abs (a - c)
    bc = abs (b - c)

queries [] = []
queries xs = h:t
  where
    (h, xs') = splitAt 3 xs
    t = queries xs'
