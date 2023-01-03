
(* The type of tokens. *)

type token = 
  | UNIT_TYPE
  | UNIT
  | TWOPOINTS
  | TRUE
  | THEN
  | STAR
  | RPAR
  | RARROW
  | PLUS
  | OR
  | NOT
  | NEQ
  | MOD
  | MINUS
  | LT
  | LPAR
  | LET
  | LE
  | LARROW
  | INT_TYPE
  | IN
  | IF
  | IDENT of (string)
  | FUN
  | FALSE
  | EQUALS
  | EQONLY
  | EOF
  | ELSE
  | DIV
  | CST of (int)
  | BOOL_TYPE
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Mml.prog)
