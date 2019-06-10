import Control.Arrow ((>>>))
import Data.List (subsequences)

main = interact $ solve

solve =
  words
  >>> tail
  >>> map (read :: String -> Int)
  >>> (\xs -> filter ((==) $ maximum xs) xs)
  >>> length
  >>> show
