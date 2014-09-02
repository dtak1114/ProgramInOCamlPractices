(* 3.7 *)
let rec pow1 x n = 
  match n with
  | 1 -> x
  | n' -> x * pow1 x (n-1);;

let rec pow2 x n =
  if n = 1 then x else 
  let prod = (n/2) in (* n を2で割った商を求める *)
  if n - 2*prod = 0 (*商が 2で割り切れる == x^(2n) -> (x^2)^nのパターン*)
  then pow2 (x*x) prod
  else (pow2 (x*x) (prod)) * x;;