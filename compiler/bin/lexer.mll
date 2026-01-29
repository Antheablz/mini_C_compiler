
{
open Token
}

rule token = parse
     [' ' '\t' '\n']
       { token lexbuf }
    | ['{']
       { OPEN_BRACKET }
    | ['}']
       { CLOSE_BRACKET }
    | [';']
       { SEMICOLON }
    | ['a'-'z''A'-'z']+
        {IDENTIFIER}
    | ['0'-'9']+ as lxm
       { INT(int_of_string lxm) }
    | eof
       { EOF }