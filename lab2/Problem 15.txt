rep :: a -> Int -> [a]
rep _ 0 = []
rep x 1 = [x]
rep x n = x:rep x (n-1)

repli :: [a] -> Int -> [a]
repli [] n = []
repli (x:xs) n = rep x n ++ repli xs n


main =  do
print(repli [2, 3] 3)