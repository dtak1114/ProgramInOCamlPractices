(* 4.2 *)

print_endline("\n");;
print_endline("4.2");;
let rec repeat f n x = (* f(x)をn回、それぞれの結果を引数として繰り返す *)
  if n > 0 then repeat f (n-1) (f x)
  else x;;

let fib n =
  let (fibn, _) = 
    repeat (fun (a,b) -> (b,a+b)) n (0,1)
  in fibn;;
(* よくわからないけど動く・・  *)

assert((fib 10)=55);;
assert((fib 2)=1);;
assert((fib 5)=5);;