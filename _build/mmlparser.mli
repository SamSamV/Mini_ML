
(* The type of tokens. *)

type token = 
  | THEN
  | STAR
  | RPAR
  | PLUS
  | OR
  | NEQ
  | MOD
  | MINUS
  | LT
  | LPAR
  | LET
  | LE
  | IN
  | IF
  | IDENT of (string)
  | EQUALS
  | EQONLY
  | EOF
  | ELSE
  | DIV
  | CST of (int)
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Mml.prog)
