import Control.Arrow ((>>>))

main = interact $ lines >>> map read >>> filter odd >>> sum >>> show
