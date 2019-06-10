import Control.Arrow ((>>>))
import Data.List (group)

main = interact $ words >>> last >>> solve >>> show

solve :: String -> Int
solve =
      map (\c -> if c == 'U' then 1 else -1)
  >>> foldl f [0]
  >>> map signum
  >>> group
  >>> map head
  >>> filter (<0)
  >>> length
  where f z x = (head z + x) : z
