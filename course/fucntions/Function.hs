sign x = if (x > 0) then 1 else if (x < 0) then -1 else 0
deg = 2 ^ 3 ^ 2
val = (*) 2 ((+) 1 4) ^ 2

infixl 6 *+*
(*+*) a b = a ^ 2 + b ^ 2
val2 = 1 + 3 *+* 2 * 2

partial = (`mod` 14) ((+ 5) 10)