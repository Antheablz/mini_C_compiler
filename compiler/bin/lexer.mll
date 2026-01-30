
{
open Token
}

rule read_token = parse
   [' ' '\t' '\n']
      { read_token lexbuf }
   | ['{']
      { OPEN_BRACKET }
   | ['}']
      { CLOSE_BRACKET }
   | ['(']
      { OPEN_PARENTHESES }
   | [')']
      { CLOSE_PARENTHESES }
   | [';']
      { SEMICOLON }
   (* matches keywords section *)
   | "int"
      { INT }
   | "printf"
      { PRINTF }
   (* matches identifiers section *)
   | ['a'-'z''A'-'z']+
      {IDENTIFIER}
   | ['0'-'9']+ as lxm
      { INTEGER(int_of_string lxm) }
   | eof
      { EOF }