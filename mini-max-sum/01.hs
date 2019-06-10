import Control.Arrow ((>>>))
import Data.List (subsequences)

main = interact $ solve

solve =
  words
  >>> map (read :: String -> Int)
  >>> subsequences
  >>> filter (\s -> length s == 4)
  >>> map sum
  >>> reduce
  >>> map show
  >>> unwords

reduce xs = [minimum xs, maximum xs]
