data S = Solutions Double Double | Solution Double | No deriving Show
 
solve :: Double -> Double -> Double -> S
solve a b c |d > 0 = (Solutions (((-b) + (sqrt d))/(2.0 * a))(((-b) - (sqrt d))/(2.0 * a)))
            |d < 0 = No
            |otherwise = (Solution ((-b)/(2.0 * a)))
             where d = b * b - 4.0 *a * c

main = do
print(solve 1.0 2.0 1.0)