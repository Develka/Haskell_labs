data Tree x = Nil | Node x (Tree x) (Tree x) deriving (Show, Eq)

internalNodes Nil = []
internalNodes (Node x Nil Nil) = []
internalNodes (Node x l r) = x: internalNodes (l) ++ internalNodes (r)

main = do

print(internalNodes (Node 1 (Node 2 Nil (Node 4 Nil Nil)) (Node 2 Nil Nil)))