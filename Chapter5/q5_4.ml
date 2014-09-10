let rec map f l = function
  [] -> []
  | v :: rest -> (f l) :: map f rest;;

let f = (fun x -> x+1) and g = (fun x -> x*2);;
let list1 = [1;2;3];;

assert(map f (map g list1) = map (fun x -> f ( g x)) list1);;
