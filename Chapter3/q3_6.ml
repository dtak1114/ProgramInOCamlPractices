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