import Control.Arrow ((>>>))

main = interact $ words >>> tail >>> reverse >>> unwords