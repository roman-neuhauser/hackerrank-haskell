import Control.Arrow ((>>>))

main = interact $ lines >>> map (read :: String -> Int) >>> (\(d:xs) -> filter (<d) xs) >>> map show >>> unlines
