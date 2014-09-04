print_endline("5.2 \n");;

print_endline("5.2.1 \n");;
 
let rec downto1 n =
  match n with
  | 0 -> []
  | n' when n' >= 1 -> n' :: downto1 (n-1)
  | _ -> [];;

  
  
























let rec zip alist blist =
  match blist with
  | [] -> []
  | hb::restb -> (match alist with
    | [] -> []
    | ha :: resta -> (ha,hb) :: (zip resta restb)
  );;