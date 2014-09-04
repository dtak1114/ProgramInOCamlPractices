print_endline("4.5 \n");;

let twice f x = f ( f x);;

(* twice twice f x 
-> twice ( twice f x) 
-> twice (f ( f x))
g = f (f x)とおくと
-> twice g 
-> g ( g x)
-> f ( f (g x))
-> f ( f ( f (f x)));; *)