import Control.Arrow ((>>>))

main = interact $ words >>> (\(s:xs) -> map (replicate $ read s) xs) >>> concat >>> unlines
