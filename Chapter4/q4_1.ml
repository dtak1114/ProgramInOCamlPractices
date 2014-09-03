print_endline "4.1\n"

let curry f x y = f (x, y);;
let average (x,y) = (x +. y) /. 2.0;;
let curried_avg = curry average;;
let uncurry f (x,y) = f x y;;

let avg = uncurry curried_avg;;
print_float(avg(4.0, 5.3));;
assert(avg(4.0, 5.3) = 4.65);;


