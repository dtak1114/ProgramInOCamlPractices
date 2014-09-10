let rec fold_right f l e =
  match l with 
    [] -> e
    | v :: rest -> f x (fold_right f rest e);;

let concat l = (* a' list list -> a'*)
  fold_right (fun s1 s2 -> s1 @ s2) l [];;

let forall p l = (* (a' -> bool) -> a' list -> bool*)
  fold_right (fun x y -> p(x) && p(y)) l true;;

let exists p l =  (* a' list -> bool*) 
  fold_right (fun x y -> (p x)||(p y)) l true;;

