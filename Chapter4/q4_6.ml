(* K combinator *)
(* K xはどんな引数に適用されてもxを返す関数。 *)
let k x y = x;;

(* S combinator *)
(* 関数合成の演算子を一般化したもの *)
let s x y z = x z ( y z);;

(* fun x y -> y *)
(* 'a -> 'b -> 'b であれば良い。 *)
(* s k ->
k 'b ('a 'b) ->
'b 
したがって
s k : 'a -> 'b -> 'b *)
