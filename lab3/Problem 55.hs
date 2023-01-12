data Tree = Nil | Node Char Tree Tree deriving (Show, Eq)

f1 x y
      | x == y = [(x,x)]
      | otherwise = [(x,y),(y,x)] 

cbalTree 1 = [Node 'x' Nil Nil]
cbalTree 2 = [Node 'x' Nil (Node 'x' Nil Nil), Node 'x' (Node 'x' Nil Nil) Nil]
cbalTree n = [Node 'x' l r | (k1,k2) <- f1 a1 a2, l <-cbalTree k1, r <- cbalTree k2] where
    a1 = div d 2
    a2 = div d 2 + mod d 2
    d = n-1
main = do

print(cbalTree 2)