(* 3.13 *)
(* 
  let rec pow1 x n = 
  match n with
  | 1 -> x
  | n' -> x * pow1 x (n-1);;
*)

let rec pow = 
  fun x n -> 
    if n = 1 then x 
    else x * (pow x (n-1));;
assert ((pow 10 2) = 100);;

