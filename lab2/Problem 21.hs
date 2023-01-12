placeAt :: a -> [a] -> Int -> [a]
placeAt x [] _ =  [x]
placeAt e (x:xs) 0 = x:xs
placeAt e (x:xs) n
    | n > 1 = x:placeAt e xs (n-1)
    | otherwise = e:x:xs


main =  do
print(placeAt 2 [1, 2, 3, 4] 3)
