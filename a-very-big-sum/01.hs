import Control.Arrow ((>>>))

main = interact $ words >>> tail >>> map read >>> sum >>> show