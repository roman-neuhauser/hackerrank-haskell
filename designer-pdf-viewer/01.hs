import Control.Arrow ((>>>))
import Data.Char (ord)
import Data.Function ((&))

main = interact $ solve >>> show

solve :: String -> Int
solve s = (length w) * (maximum $ map height w)
  where
    ([hs'], [w]) = splitAt 1 (lines s)
    hs = hs' & words & map read :: [Int]
    height c = hs !! ((ord c) - 97)
