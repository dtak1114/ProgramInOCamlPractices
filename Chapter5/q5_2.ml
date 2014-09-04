print_endline("5.2 \n");;

print_endline("5.2.1 \n");;
 
let rec downto1 n =
  match n with
  | 0 -> []
  | n' when n' >= 1 -> n' :: downto1 (n-1)
  | _ -> [];;

print_endline("5.2.2");;

(* let rec roman_direct year = 
  match year with
    | n' when n' >= 1000 -> "M" ^ roman_direct (n'-1000)
    | n' when n' >= 900 -> "CM" ^ roman_direct (n'-900)
    | n' when n' >= 500 -> "D" ^ roman_direct (n'-500)
    | n' when n' >= 400 -> "CD" ^ roman_direct (n'-400)
    | n' when n' >= 100 -> "C" ^ roman_direct (n'-100)
    | n' when n' >= 90 -> "XC" ^ roman_direct (n'-90)
    | n' when n' >= 50 -> "L" ^ roman_direct (n'-50)
    | n' when n' >= 10 -> "X" ^ roman_direct (n'-10)
    | n' when n' >= 5 -> "V" ^ roman_direct (n'-5)
    | n' when n' >= 1 -> "I" ^ roman_direct (n'-1)
    | _ -> "";;

print_string(roman_direct 2014 ^ "\n");; *)

let year_map = [(1000,"M");(900,"CM");(500,"D");(400,"CD");(100, "C");(90,"XC");(50,"L");(40,"XL");(10,"X");(9,"IX");(5,"V");(4,"IV");(1,"I")];;

let rec roman l year =
  match l with
    | (u, c) :: _  when year >= u -> c ^ (roman l (year-u))
    | _ :: rest  -> roman rest year
    | _ -> "";;
  
(* assert ((roman year_map 1984) = ("MCMLXXXIV"));; *)
print_endline (roman year_map 1984);;

print_endline("5.2.3");;

let rec nested_length l = 
  let rec length = function
    | hd :: rest -> 1 + length rest
    | [] -> 0
  in 
  match l with
    | hd :: rest -> (length hd) + (nested_length rest)
    | [] -> 0;;

assert((nested_length[[1;2;3];[4;5];[6];[7;8;9;10]])=(10));;

print_endline("5.2.4");;

print_endline("5.2.5");;

let rec zip alist blist =
  match blist with
  | [] -> []
  | hb::restb -> (match alist with
    | [] -> []
    | ha :: resta -> (ha,hb) :: (zip resta restb)
  );;