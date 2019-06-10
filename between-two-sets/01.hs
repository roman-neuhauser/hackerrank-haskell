import Control.Arrow ((>>>))
import Data.Function ((&), on)

main = interact
  $   lines
  >>> tail
  >>> (\[as, bs] -> (solve `on` ints) as bs)
  >>> show
  where
    ints :: String -> [Int]
    ints = words >>> map read

    solve :: [Int] -> [Int] -> Int
    solve as bs =
      map (* lcm') [1..]
      & takeWhile (<= gcd')
      & filter (\x -> gcd' `mod` x == 0)
      & length
      where
        lcm' = foldr lcm (head as) (tail as)
        gcd' = foldr gcd (head bs) (tail bs)
