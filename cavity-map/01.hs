import Data.Char (digitToInt)
import Data.Function ((&))

main = interact solve

solve :: String -> String
solve s = m
  & map show
  & chunks n
  & map concat
  & unlines
  where
    (n': m') = lines s
    n = n' & read :: Int
    m = m' & concat & map digitToInt & mkCells n

mkCells :: Int -> [Int] -> [Cell]
mkCells n m = map (mkCell n m) [0..n*n-1]

data Cell = Cavity Int | Shallow Int

instance Show Cell where
  show (Cavity c) = "X"
  show (Shallow c) = show c

mkCell :: Int -> [Int] -> Int -> Cell
mkCell n m i
  | isCavity n m i = Cavity (m!!i)
  | otherwise      = Shallow (m!!i)

isCavity :: Int -> [Int] -> Int -> Bool
isCavity n m i
  | i `mod` n == 0     = False
  | i `mod` n == n - 1 = False
  | i < n              = False
  | n*n - i < n        = False
  | otherwise          = all (< (m!!i)) neighbors
  where
    neighbors = [
        (m !! (i - n)),
        (m !! (i + n)),
        (m !! (i - 1)),
        (m !! (i + 1))
      ]

chunks n [] = []
chunks n xs = h:(chunks n t)
  where
    (h, t) = splitAt n xs
