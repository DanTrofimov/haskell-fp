-- Funstional & operator styles 
funStyleMax x y = max x y
operatorStyleMax x y = x `max` y

funStylePlus x y = (+) x y
operatorStylePlus x y = x + y

-- Custom operators
infixl 6 *+*

a *+* b = a ^ 2 + b ^ 2

-- $ operator

calcSinPIdivNum num = sin $ pi / num