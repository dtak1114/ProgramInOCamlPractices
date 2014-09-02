(* 3.13 *)

let rec pow = fun n x -> match n with
| 1 -> x
| n' -> x * (pow (n'-1) x);;

(* print_int (pow 2 10);; *)

assert ((pow 2 10) = 100);;

let cube x = (pow 3 x);;

assert ((cube 2) = 8);;


