import Control.Arrow ((>>>))

main = interact $ solve

solve =
  words
  >>> tail
  >>> map (read :: String -> Int)
  >>> (\(k:xs) -> rotate k xs)
  >>> map show
  >>> unwords

rotate k xs =
  take (length xs) (drop k (cycle xs))
