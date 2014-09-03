3.15.1 *)
(* int -> int -> int -> int *)
(* intを3つ受け取ってint型を返す関数． *)
let example1 a b c :int =
  a + b + c ;;

print_int (example1 1 2 3);;


(* 3.15.2 *)
(* (int -> int) -> int -> int *)
(* int を受け取ってintを返す関数，および intを一つ受け取る関数 *)
let example2 f (a:int):int =
(f a) ;;

print_int (example2 (fun a -> a+1) 2 );;

(* 3.15.3 *)
(* (int -> int -> int) -> int *)
(* int を２つ受け取りintを一つ返す関数　を引数として，intを返す関数 *)
(* skip *)


