open Token
open Printf

let get_token_list lexbuf =
  let rec work acc =
    match Lexer.token lexbuf with
    | EOF -> acc
    | t -> work (t::acc)
  in List.rev (work[])


let main =
  let lexbuf = Lexing.from_string "{ test }" in
  let token_list = get_token_list lexbuf in
  printf "Length: %d\n" (List.length token_list)



(* let () = print_endline "Hello, World!" *)

(* let current_working_directory = Sys.getcwd ()
let file = current_working_directory ^ "/../return_2.c"

let () =
  let ic = open_in file in 
  try
    while true do
      let line = input_line ic in
      print_endline line;
      flush stdout
    done
  with
    End_of_file -> close_in ic *)


