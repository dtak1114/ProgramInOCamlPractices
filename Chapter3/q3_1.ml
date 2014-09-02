let puts str =
  print_string (str ^ "\n");;

(* 3.1.1 *)
let usd2jpy usd :int =
  let rate = 114.32 in
  int_of_float( usd *. rate);;

assert((usd2jpy 100.0) = 11432);;

(* 3.1.2 *)
let jpy2usd (jpy:int) : float =
  let floor2 (x:float) : float = floor(x *. 100.0) /. 100.0 in
  let rate = 114.32 in 
  floor2 ((float_of_int jpy) /. rate);;

assert ((jpy2usd 100) = 0.87);;

(* 3.1.3 *)
let usd2jpystr usd = 
  let ret = string_of_float(usd) ^ " dollars are " ^ string_of_int(usd2jpy(usd)) ^ " yen.\n"
  in print_string ret;;

usd2jpystr 123.45;;


(* 3.1.4 *)
(* print_int(int_of_char('a'));; *)
(* print_string "\n";;
print_int(int_of_char('A') - int_of_char('a'));;
 *)
let capitalize (c:char) =
  let x = int_of_char(c) in
  let diff = (int_of_char('a') - int_of_char('A')) in
  let y =
    if 97 <= x && x <= 122 then (x-diff) else x in
  char_of_int(y);;

assert(capitalize('b') = 'B');;
assert(capitalize('A') = 'A');;
assert(capitalize('1') = '1');;


(* 3.2 *)

let and2 a b =
  if a = false then false else a = b;;

let or2 a b =
  if a = true then true else a <> b;;

(* 3.3 *)
let and3 a b =
  not ((not a) || (not b));;

let or3 a b =
  not ((not a) && (not b));;

(* 3.4 *)
(* let x = 1 in let x = 3 in let x = x + 2 in x * x;; *)
(* -> x = 5 in x * x -> 25 *)

(* let x = 2 and y = 3 in (let y = x and x = y + 2 in x * y) + y;; *)
(* -> ( y = 2 and x = 5 in x * y ) + 3 -> 10 + 3 -> 13  *)

(* let x = 2 in let y = 3 in let y = x in let z = y + 2 in x * y* z ;; *)
(* -> x = 2 and y = 2 in let z = y + 2 in x * y * z -> 2 * 2 * 4 -> 16 *)


(* 3.5 *)
(* skip *)

(* 3.6 *)
let geo_mean (x, y) = 
  sqrt(x *. y);;

let bmi ((name:string), (height:float),(weight:float)) =
  let index = weight /. (height *. height) in
  let status = 
    if index < 18.5 then "やせ"
    else if 18.5 <= index && index < 25.0 then "標準"
    else if 25.0 <= index && index < 30.0 then "肥満"
    else if 30.0 <= index then "高度肥満" else "不明"
  in print_string (name ^ "さんは" ^ status ^ "です\n");;

bmi("hoge", 1.85, 75.0);;


let sum_and_diff (x,y) = (x+y, x-y);;

let f (sum,diff) = 
  let x = (sum+diff)/2 and
  y = (sum-diff)/2 in
  (x,y);;

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

(* 3.8 *)
let rec iterpow (x,res,i,n)  =
  if i >= n then res
  else iterpow(x,(res*x),(i+1),n);;

assert(iterpow(2,1,1,10) = 512);;

print_endline("\n");;

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

print_endline("\n");;

(* 3.10 *)
(* skip *)


(* 3.11 *)
let rec gcd (m,n)  = (* m<nのときのmとnの最大公約数*)
  let order_asc (a,b) = if a > b then (b,a) else (a,b) in
  let (i,j) = order_asc(m,n) in
  let modulo (a,b) = b - (b/a)*a in
  if modulo (i,j) = 0 then i
  else gcd(j,modulo(i,j));; 

assert (gcd(24,18) = 6);


(* let rec combinatorial n m =
  if n = 0 || n == m then 1
  else combinatorial(n-1,m) + (n-1,m-1);;



 *)