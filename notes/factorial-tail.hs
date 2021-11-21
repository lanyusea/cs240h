factorial r n = 
    if n > 1
    then factorial (r * n) (n - 1)
    else r

factorial_ n = 
    let calc r n' = 
            if n' > 1
            then calc (r * n') (n' - 1)  -- ATTENTION: it will still compile successfully,
                                            -- if you write `calc (r * n') (n - 1)` by mistake,
                                            -- the `n` can still be refered in the inner function
                                            -- also that's why we use n' instead of n to make things clear
            else r 
    in calc 1 n

factorial__ n = calc 1 n 
    where calc r n' = 
            if n' > 1
            then calc (r*n') (n'-1)
            else r

factorial_guards n = 
    let calc r n' | n' > 1 = calc (r * n') (n' - 1)
                   | otherwise = r
    in calc 1 n

factorial_guards_ n = 
    calc 1 n where
        calc r n' | n' > 1 = calc (r * n') (n' - 1)
                    | otherwise = r
main = 
    let result = factorial 1 5
        result_ = factorial_ 5
        result__ = factorial__ 5
        result_g = factorial_guards 5
        result_g_ = factorial_guards_ 5

    in print $ [result, result_, result__, result_g, result_g_]
