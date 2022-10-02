-- Function declaring
sumSquares x y = x ^ 2 + y ^ 2
lenVec3 x y z =  sqrt (x^2 + y^2 + z^2)

-- Partial applying
fun = max 5 42
funPartial = (max 5) 42

maxWithNum num = max num -- skipped 2'nd arg for max
maxWith5 = maxWithNum 5

-- Conditions
withCondition x num = (if x > 0 then 1 else (-1)) + num