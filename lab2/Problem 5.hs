listReverse :: [a] -> [a]
listReverse [] = []
listReverse (x:xs) = listReverse xs ++ [x]

main = do
print(listReverse [1,2,3,4])
