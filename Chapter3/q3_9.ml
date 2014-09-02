(* 3.9 *)
let cond (b, e1, e2) =
  if b then Lazy.force(e1) else Lazy.force(e2);;

let rec cond_fact n = 
  cond(
    (n=1),
    (lazy 1),
    (lazy (n*cond_fact(n-1))));;

assert(cond_fact(4)=24);; 

(* 
  Ocamlの関数は通常，引数が先に評価される（名前渡し呼び）．
  従ってこの場合 condの第2引数が先に評価されてしまう．
  ここにfact(0)が到達すると評価が発散してしまうため，スタックがあふれる．
  これを解決するためには，引数を遅延評価する必要がある．
 *)