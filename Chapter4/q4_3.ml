print_endline("4.3\n");;
let ($) f g x = f(g x);;
let id f = f;;

let rec funny f n =
  if n = 0 then id (* n = 0なら id を返す -> f*)
  else if n mod 2 = 0 then funny (f $ f) (n/2) (* nが偶数なら、log(n)回fを合成する。*)
  else funny (f $ f) (n/2) $ f;; (*奇数なら更にfを合成する*)

(* この関数はfをn回合成した関数を返す関数である *)




