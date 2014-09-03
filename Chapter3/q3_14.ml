(* 3.14 *)

let sinx = 
  let pi = 4.0 *. atan 1.0 in
  let s = pi /. 100.0 in
  let partial_integral a b =
    let s = pi /. 1000.0 in
    (sin (a +. s) +. sin (b +. s)) *. s /. 2.0 in
  let rec integral_iter a b sum =
    if a >= pi then sum  (* end *)
    else integral_iter (a+.s) (b+.s) (sum +.(partial_integral a b ))
  in integral_iter 0.0 s 0.0;;

print_float sinx;;  (* =~ 2.0 *)
print_endline("\n") ;;