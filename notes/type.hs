data Shape = Circle {x::Double, y::Double, radius::Double} | Rectangle {centre::(Double, Double), width::Double, height::Double}

surface :: Shape -> Double
surface (Circle _ _ radius) = radius* radius * 3.14
surface (Rectangle _ width height) = width * height

is_circle :: Shape -> Bool
is_circle (Circle _ _ _) = True
is_circle x = False

main =
    let 
        shape_a = Circle 1 2 3
        shape_b = Rectangle (1,2) 3 4
    in
        print $ (surface shape_a, is_circle shape_b)
