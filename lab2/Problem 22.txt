range :: Int -> Int -> [Int]
range y x 
    | y == x = [x]
    | otherwise = y:range (y+1) x


main =  do
print(range 1 4)