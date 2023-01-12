data Tree x = Nil | Node x (Tree x) (Tree x) deriving (Show, Eq)

collectLeaves Nil                   = []
collectLeaves (Node t Nil Nil)      = [t]
collectLeaves (Node t l r)          = collectLeaves l ++ collectLeaves r

main = do

print(collectLeaves (Node 1 (Node 2 Nil (Node 4 Nil Nil)) (Node 2 Nil Nil)))