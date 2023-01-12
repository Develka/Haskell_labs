myComp :: (a -> a -> Bool) -> a -> [a] -> Bool
myComp _ y [] = True
myComp f y (x:xs)
    | f y x = False
    |otherwise = True
        

collapse :: (Eq a) => [a] -> [a]
collapse [] = []
collapse (x:xs)
    | myComp (==) x xs = x:collapse xs
    | otherwise = collapse xs
    

main = do

print(collapse "aaaabccaadeeee")