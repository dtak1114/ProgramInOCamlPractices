print_endline "5.3.1";;

let rec mem a s =
  match s with
  [] -> false
  | v :: rest when v = a -> true
  | v :: rest -> false || (mem a v);;

print_endline "5.3.2";;
let intersect s1 s2 =
  let rec delegate s1 s2 pool =
    match s1 with 
      | [] -> pool
      |v :: rest when (mem v s2) -> delegate rest s2 (v::pool)
      |v :: rest -> delegate rest s2 pool
  in delegate s1 s2 [];;

print_endline "5.3.3";;
let union s1 s2 = 
  let rec delegate = function
      [] -> []
      | v :: rest when (mem v rest) -> delegate rest (* restの中にもvと同じ要素があるので，vをはじいた上でやりなおし*)
      | v :: rest -> v :: (delegate rest) (* v はrestの中に無かった，vは飛ばして残りを調べる．*)
    in delegate (s1@s2);;

print_endline "5.3.4";;

let rec rid x = (function
| []-> []
| v :: rest when x <> v -> v :: (rid x rest)
| v :: rest when (rid x rest)
);;

let rec iterrid l1 = function 
    [] -> l1
    | v :: rest -> (iterrid (rid v l1) rest);;

let diff s1 s2 = 
  iterrid s1 (intersect s1 s2);;

(* rid (s1 ) *)


