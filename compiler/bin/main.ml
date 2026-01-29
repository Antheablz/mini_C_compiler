(* let () = print_endline "Hello, World!" *)

let file = "c_compiler/return_2.c"





let () =
  let ic = open_in file in 
  try
    while true do
      let line = input_line ic in
      print_endline line;
      flush stdout
    done
  with
    End_of_file -> close_in ic


