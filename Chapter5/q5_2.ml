print_endline("5.2 \n");;

print_endline("5.2.1 \n");;
 
let rec downto1 n =
  match n with
  | 0 -> []
  | n' when n' >= 1 -> n' :: downto1 (n-1)
  | _-> [];;

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
let rec concat =
  function
    fst :: snd :: rest -> concat ((fst@snd):: rest)
    | fst :: snd :: [] -> fst @ snd
    | fst :: [] -> fst;;

assert((concat [[0;3;4];[2];[];[5;0]])=[0;3;4;2;5;0]);;

print_endline("5.2.5");;

let rec zip alist blist =
  match blist with
  | [] -> []
  | hb::restb -> (match alist with
    | [] -> []
    | ha :: resta -> (ha,hb) :: (zip resta restb)
  );;


print_endline("5.2.6");;

let unzip l1= 
  let rec aggregate alist blist l2 = 
    match l2 with 
      [] -> (alist,blist)
      | (a,b) :: rest -> aggregate (alist @ [a]) (blist @ [b]) rest 
    in
    aggregate [] [] l1;;

let actual_526 = unzip(zip [2;3;4;5;6;7;8;9;10;11] [true;true;false;true;false;true;false;false;false;true]);;
let expected_526 = ([2;3;4;5;6;7;8;9;10;11],[true;true;false;true;false;true;false;false;false;true]);;

assert(expected_526 = actual_526);;

print_endline("5.2.7");;

let filter f l1 =
  let rec intern l2 ret = 
    match l2 with
    |[] -> ret
    |fst :: rest when f (fst) -> intern rest (ret @ [fst]) 
    |fst :: rest when not(f(fst)) -> intern rest ret 
    |fst :: [] when f (fst) -> ret @ [fst] 

  in intern l1 [];;

assert( (filter (fun x -> x >0) [-9;0;2;5;-3]) = ([2;5]));;

print_endline("5.2.8");;

let take n l =
  let rec intern n l ret =
    if n = 0 then (List.rev ret)
    else match l with
       fst :: rest -> intern (n-1) rest (fst::ret) 
  in intern n l [];;

assert((take 3 [1;2;3;4;5]) = [1;2;3]);;

let drop n l =
  let rec intern n l ret =
    if n = 0 then l
    else match l with
      fts :: rest -> intern (n-1) rest (fst::ret)
    in intern n l [];;

assert((drop 3 [1;2;3;4;5]) = [4;5]);;

print_endline("5.2.9");;

let max_list l1 = 
  let pivot = List.hd l1 in
  let rec intern l2 max =
    match l2 with
    [] ->  max
    |fst :: rest when fst > max -> intern rest fst
    |fst :: rest when fst <= max -> intern rest max
  in intern l1 pivot;;

assert((max_list [7;9;0;-5]) = 9);;



















