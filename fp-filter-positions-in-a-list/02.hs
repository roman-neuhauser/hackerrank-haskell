import Control.Arrow ((>>>))

main = interact $ words >>> zip [1..] >>> filter (fst >>> even) >>> map snd >>> unlines