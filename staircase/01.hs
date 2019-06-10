import Control.Arrow ((>>>))
import Data.Function ((&))
import Text.Printf (printf)

main = interact $ words >>> map read >>> solve >>> unlines

solve :: [Int] -> [String]
solve [] = []
solve (n:_) =
  [1..n] & map (flip replicate '#') & map (printf "% *s" n)
