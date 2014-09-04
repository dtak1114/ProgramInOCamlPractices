print_endline("4.4\n");;

(* I combinator *)
(* 恒等関数 *)
let id f = t;;

(* K combinator *)
(* K xはどんな引数に適用されてもxを返す関数。 *)
let k x y = x;;

(* S combinator *)
(* 関数合成の演算子を一般化したもの *)
let s x y z = x z ( y z);;

(* s k k z -> k ('_z (k '_z)) -> k ( '_z '_z) -> '_z -> z *)
(* kは引数を2つ受け取っても1つ受け取っても、必ず1つ目を返す関数である。
関数適用 s k k は最終的に (k '_z _)に収束する。
よって (s k k)  は関数を受け取り同じ関数を返す恒等関数になる。*)


