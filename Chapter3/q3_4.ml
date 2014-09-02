(* 3.4 *)
(* let x = 1 in let x = 3 in let x = x + 2 in x * x;; *)
(* -> x = 5 in x * x -> 25 *)

(* let x = 2 and y = 3 in (let y = x and x = y + 2 in x * y) + y;; *)
(* -> ( y = 2 and x = 5 in x * y ) + 3 -> 10 + 3 -> 13  *)

(* let x = 2 in let y = 3 in let y = x in let z = y + 2 in x * y* z ;; *)
(* -> x = 2 and y = 2 in let z = y + 2 in x * y * z -> 2 * 2 * 4 -> 16 *)