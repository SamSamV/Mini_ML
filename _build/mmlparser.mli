
(* The type of tokens. *)

type token = 
  | UNIT_TYPE
  | UNIT
  | TYPE
  | TWODOT
  | TRUE
  | THEN
  | STAR
  | RPAR
  | REC
  | RARROW
  | RACC
  | PLUS
  | OR
  | NOT
  | NEQ
  | MUTABLE
  | MOD
  | MINUS
  | LT
  | LPAR
  | LET
  | LE
  | LARROW
  | LACC
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
  | DOTVIRG
  | DOT
  | DIV
  | CST of (int)
  | BOOL_TYPE
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Mml.prog)
