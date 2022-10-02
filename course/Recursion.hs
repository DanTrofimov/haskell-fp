-- Default factorial
factorial n = if n == 0 then 1 else n * factorial (n - 1)

-- Pattern matching
factorial' 0 = 1
factorial' n = if n < 0 then error "arg must be >= 0" else n * factorial' (n - 1)

-- Guards
factorial'' 0 = 1
factorial'' n | n < 0 = error "arg must be >= 0"
              | n > 0 = n * factorial'' (n - 1)

factorial''' :: Integer -> Integer
factorial''' n | n == 0 = 1
               | n > 0 = n * factorial''' (n - 1)
               | otherwise = error "arg must be >= 0"

fibonacci :: Integer -> Integer
fibonacci n  | n == 0 = 0
	         | n == 1 = 1
	         | n >= 0 = f' 1 1 n 
	         | n < 0 = (-1) ^ (-n + 1) * fibonacci (-n)

f' :: Integer -> Integer -> Integer -> Integer 
f' acc acc' i | i == 2 = acc
			  | i > 2 = f' (acc + acc') acc (i - 1) 
