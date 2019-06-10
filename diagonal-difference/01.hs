import Control.Arrow ((>>>))
import Data.Function ((&), on)

--      n = 5
--  0  1  2  3  4
--  5  6  7  8  9
-- 10 11 12 13 14
-- 15 16 17 18 19
-- 20 21 22 23 24

main = interact $ words >>> map read >>> solve >>> show

solve :: [Int] -> Int
solve (n : xs) =
  abs $ (sum ld') - (sum rd')
  where
    ld' = diag n xs onld
    rd' = diag n xs onrd

diag n xs onad =
  zip [0..] xs & filter (fst >>> onad n) & map snd

ld n = [    0, (n+1)   .. (n*n)-1]
rd n = [(n-1), (n-1)*2 .. (n*n)-2]

onld n i = i `elem` (ld n)
onrd n i = i `elem` (rd n)
