import Control.Arrow ((>>>))

main = interact $ words >>> map read >>> solve >>> map show >>> unlines

solve :: [Int] -> [Int]
solve (s: t: a: b: m: n: xs) =
  [
    hits a $ take m xs
  , hits b $ drop m xs
  ]
  where
    hits o xs =
      sum $ map hit $ map (o +) xs
    hit x
      | s <= x && t >= x = 1
      | otherwise = 0
