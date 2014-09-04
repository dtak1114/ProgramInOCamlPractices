print_endline("5.2 \n");;

print_endline("5.2.1 \n");;
 
let rec downto1 n =
  match n with
  | 0 -> []
  | n' when n' >= 1 -> n' :: downto1 (n-1)
  | _ -> [];;

print_endline("5.2.2 \n");;

let rec roman year = 
  match year with
    | n' when year >= 1000 -> "M" ^ roman (year-1000)
    | n' when year >= 500 -> "D" ^ roman (year-500)
    | n' when year >= 100 -> "C" ^ roman (year-100)
    | n' when year >= 50 -> "L" ^ roman (year-50)
    | n' when year >= 10 -> "X" ^ roman (year-10)
    | n' when year >= 5 -> "V" ^ roman (year-5)
    | n' when year >= 1 -> "I" ^ roman (year-1);;




  
