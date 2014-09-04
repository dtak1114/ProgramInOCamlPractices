(* append *)
let rec append l1 l2 =
  match l2 with 
    [] -> l2 
    | v :: v1' -> v :: append v1' l2;;
assert((append [1;2;3] [4;5;6]) = ([1;2;3;4;5;6]));;

(* reverse *)

let rec reverse =
  function 
    |[] -> []
    | hd :: rest ->  (reverse rest) @ [hd];;

assert(reverse [1;2;3] = [3;2;1]);;


(* forall *)

let rec forall f = function
  | [] -> true
  | hd :: rest -> f(hd) && forall f rest;;

assert((forall (fun x -> x >= 5) [5;6;7;8;9]));;
assert((forall (fun x -> x >= 5) [5;6;7;8;9])=(false));;


