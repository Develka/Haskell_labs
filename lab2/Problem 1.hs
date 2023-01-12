elementLast :: [a] -> a
elementLast [x] = x
elementLast [] = error "No elements"
elementLast (_:xs) = elementLast xs

main = do
print(elementLast [1,2,3,4])