import Control.Arrow ((>>>))

main = interact $ words >>> tail >>> map (read >>> rgrade >>> show) >>> unlines

rgrade :: Int -> Int
rgrade g
  | g >= 38 && (g `mod` 5) >= 3 = g - (g `mod` 5) + 5
  | otherwise = g
