--- let ... in
roots :: Double -> Double -> Double -> (Double, Double)

roots a b c = 
    (
        (- b - sqrt(b ^ 2) - 4 * a * c) / (2 * a)
    ,
        (- b + sqrt(b ^ 2) - 4 * a * c) / (2 * a)
    )

roots' a b c = 
    let d = sqrt(b ^ 2) - 4 * a * c
    in         
        (
            (- b - d) / (2 * a)
        ,
            (- b + d) / (2 * a)
        )

-- Local scope TODO:  parse error (possibly incorrect indentation or mismatched brackets)
factorial n | n >= 0 = let
                helper acc 0 = acc
                helper acc n = helper (acc * n) (n - 1)
             in helper 1 n
            | otherwise error "arg must be >= 0"

-- Tuple binding
rootDiff a b c = let
    (x1, x2) = roots a b
    in x2 - x1
