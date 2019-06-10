import Control.Arrow ((>>>))
import Text.Printf (printf)

main = interact
  $   words
  >>> tail
  >>> map (read :: String -> Int)
  >>> foldr record [0, 0, 0, 0]
  >>> compute
  >>> map ((printf "%0.6f") :: Double -> String)
  >>> unlines

record v [c, n, z, p] | v < 0     = [c+1, n+1, z  , p  ]
                      | v > 0     = [c+1, n  , z  , p+1]
                      | otherwise = [c+1, n  , z+1, p  ]

compute [c, n, z, p] = [p/c, n/c, z/c]
