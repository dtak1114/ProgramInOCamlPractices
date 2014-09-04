print_endline("5.1\n");;
(* 5.1.1 *)
[[]] ;;
(* compileは通る．型は 'a list list *)

(* 5.1.2 *)

(* [[1;3];["hoge"]];; *)
(* compileは通らない．一つ目の要素の型は int list なのに対して二つめは string listであるから． *)

(* 5.1.3 *)

[3] :: [];;
(* compileは通る． int list list となる． *)
(* 5.1.4 *)

(* 2:: [3] :: [];; *)
(* compileは通らない．

2 :int, [3] : int list, [] : 'a listでありこの式における全ての要素の型が同じにならないため．
*)


(* 5.1.5 *)
[] :: [];;

(* compileは通る．左のlistは右のlistの要素であると推論されるため． *)

(* 5.1.6 *)
[(fun x -> x); (fun b -> not b)];;
(* compileは通る. (bool -> bool) list *)




