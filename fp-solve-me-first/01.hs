import Control.Arrow ((>>>))

main = interact $ words >>> map read >>> sum >>> show
