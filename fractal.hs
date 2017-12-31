import Data.Complex

max_iterations :: Integer
max_iterations = 40

iteration :: RealFloat a => Complex a -> Complex a -> Integer -> Integer
iteration z c i 
  | i > max_iterations = max_iterations
  | magnitude z > 2.0 = i
  | otherwise = iteration ((z**2) + c) c (i + 1)

color :: RealFloat a => Complex a -> Integer
color point = iteration (0 :+ 0) point 0

scale :: Fractional a => a -> a
scale n = n / 1000

points :: [Double]
points = map scale [0..1000]

main = do
   print $ map (\x -> (map color $ map (\y -> x :+ y) points)) points
