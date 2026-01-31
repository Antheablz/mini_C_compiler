open Token
open Printf

let get_token_list lexbuf =
  let rec work acc =
    match Lexer.read_token lexbuf with
    | EOF -> acc
    | t -> work (t::acc)
  in List.rev (work[])


(* let main =
  let lexbuf = Lexing.from_string "{ test printf }" in
  let token_list = get_token_list lexbuf in
  printf "Length: %d\n" (List.length token_list) *)















let current_working_directory = Sys.getcwd ()
let file = current_working_directory ^ "/../return_2.c"
(* let combined_list: tok list = [] *)

let () =
  let ic = open_in file in 
  try
    while true do
      let lexbuf = Lexing.from_string (input_line ic) in
      let token_list = get_token_list lexbuf in
      printf "Length: %d\n" (List.length token_list);
      (* let _ = combined_list @ token_list in *)
      (* printf "Length: %d\n" (List.length combined_list); *)
      flush stdout
    done
  with
    End_of_file -> close_in ic
    (* let _ = printf "Length: %d\n" (List.length combined_list); *)




  (* try
    while true do
      let line = Lexing.from_channel ic in
      (* let lexbuf = Lexing.from_string line in *)
      token_list = get_token_list line
      (* flush stdout *)
    done
  with
    End_of_file -> close_in ic *)

(* let () =
  let ic = open_in file in 
  try
    while true do
      let line = input_line ic in
      print_endline line;
      flush stdout
    done
  with
    End_of_file -> close_in ic *)


