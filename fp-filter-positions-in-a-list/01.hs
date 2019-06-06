import Control.Arrow ((>>>))

main = interact $ words >>> zip [0..] >>> filter (\(i, v) -> i `mod` 2 /= 0) >>> map snd >>> unlines
