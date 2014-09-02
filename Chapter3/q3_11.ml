(* 3.11.1 *)
let rec gcd (m,n)  = (* m<nのときのmとnの最大公約数*)
  let order_asc (a,b) = if a > b then (b,a) else (a,b) in
  let (i,j) = order_asc(m,n) in
  let modulo (a,b) = b - (b/a)*a in
  if modulo (i,j) = 0 then i
  else gcd(j,modulo(i,j));; 

assert (gcd(24,18) = 6);;

(* 3.11.2 *)
let rec comb n m =
  if (n = m||m = 0) then 1
  else (comb (n-1) m) + comb (n-1) (m-1);;

assert((comb 3 2) = 3);;
assert((comb 10 3) = 120 );;

(* 3.11.3 *)
let fib2 n =
  let rec fibiter(i,n,pred,succ) =
  if n=1||n=2 then 1 else
  if i=n then succ else
  fibiter(i+1,n,succ,pred+succ) in
  fibiter(2,n,1,1);;

assert((fib2 1) = 1);;
assert((fib2 3) = 2);;
assert((fib2 5) = 5);;
assert((fib2 7) = 13);;
assert((fib2 10) = 55);;


let better_fact n =
  let rec factiter(i,n,res) =
    if i = n then res
    else factiter(i+1,n,res*n) in
    factiter(1,n,1);;

(* 3.11.4 *)
let ascii_max (str:string):int = 
  let n:int = (String.length str) in
  let rec find_best_char_ascii((i:int),(best:int)) =
    if i = n then best (* finish *)
    else let new_char_ascii :int = int_of_char(String.get str i) 
    in
      if new_char_ascii > best then find_best_char_ascii(i+1,new_char_ascii)  (* bestが更新された，継続する．*)
      else find_best_char_ascii(i+1,best)  (* bestは更新されなかった．継続する*)
  in find_best_char_ascii(0,0);;

print_int (ascii_max "Daisuke");;
print_endline("\n");;