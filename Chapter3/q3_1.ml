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



let and3 a b =
  not ((not a) || (not b));;

let or3 a b =
  not ((not a) && (not b));;
