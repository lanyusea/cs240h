add_three :: Int -> Int -> Int -> Int
add_three a b c = a + b + c

add_three_tc :: Integral a => a -> a -> a -> a
add_three_tc a b c = a + b + c

add_three_ :: Int -> (Int -> (Int -> Int)) -- That's INSANE
add_three_ a b c = a + b + c
    
main = 
    let result = add_three 1 2 3
        result_ = add_three_tc 1 2 3
        result__ = add_three_ 1 2 3
    in print $ [result, result_, result__]
