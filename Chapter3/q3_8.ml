(* 3.8 *)
let rec iterpow (x,res,i,n)  =
  if i >= n then res
  else iterpow(x,(res*x),(i+1),n);;

assert(iterpow(2,1,1,10) = 512);;

print_endline("\n");;