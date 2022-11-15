
type token = 
  | STAR
  | PLUS
  | IDENT of (
# 9 "mmlparser.mly"
       (string)
# 9 "mmlparser.ml"
)
  | EOF
  | CST of (
# 8 "mmlparser.mly"
       (int)
# 15 "mmlparser.ml"
)

# 1 "mmlparser.mly"
  
(*  open Lexing *)
  open Mml


# 24 "mmlparser.ml"

let menhir_begin_marker =
  0

and (xv_simple_expression, xv_program, xv_expression, xv_binop) =
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 37 "mmlparser.mly"
  x
# 33 "mmlparser.ml"
   : (
# 9 "mmlparser.mly"
       (string)
# 37 "mmlparser.ml"
  )) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 37 "mmlparser.mly"
          ( Var(n) )
# 42 "mmlparser.ml"
     : 'tv_simple_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 36 "mmlparser.mly"
  n
# 47 "mmlparser.ml"
   : (
# 8 "mmlparser.mly"
       (int)
# 51 "mmlparser.ml"
  )) (_startpos_n_ : Lexing.position) (_endpos_n_ : Lexing.position) (_startofs_n_ : int) (_endofs_n_ : int) (_loc_n_ : Lexing.position * Lexing.position) ->
    (
# 36 "mmlparser.mly"
        ( Int(n) )
# 56 "mmlparser.ml"
     : 'tv_simple_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 32 "mmlparser.mly"
                                     _2
# 61 "mmlparser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 32 "mmlparser.mly"
                      code
# 65 "mmlparser.ml"
   : 'tv_expression) (_startpos_code_ : Lexing.position) (_endpos_code_ : Lexing.position) (_startofs_code_ : int) (_endofs_code_ : int) (_loc_code_ : Lexing.position * Lexing.position) ->
    ((
# 32 "mmlparser.mly"
                                          ( {types=[]; code} )
# 70 "mmlparser.ml"
     : 'tv_program) : (
# 16 "mmlparser.mly"
      (Mml.prog)
# 74 "mmlparser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 23 "mmlparser.mly"
 _1
# 79 "mmlparser.ml"
   : 'tv_error) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    ((
# 24 "mmlparser.mly"
    (
      let pos = _startpos in
      let message = Printf.sprintf
        "echec à la position %d, %d"
        pos.pos_lnum
        (pos.pos_cnum - pos.pos_bol)
      in
      failwith message )
# 91 "mmlparser.ml"
     : 'tv_program) : (
# 16 "mmlparser.mly"
      (Mml.prog)
# 95 "mmlparser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 22 "mmlparser.mly"
              _2
# 100 "mmlparser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 22 "mmlparser.mly"
  e
# 104 "mmlparser.ml"
   : 'tv_expression) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) ->
    ((
# 22 "mmlparser.mly"
                   ( e )
# 109 "mmlparser.ml"
     : 'tv_program) : (
# 16 "mmlparser.mly"
      (Mml.prog)
# 113 "mmlparser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 42 "mmlparser.mly"
                         e2
# 118 "mmlparser.ml"
   : 'tv_expression) (_startpos_e2_ : Lexing.position) (_endpos_e2_ : Lexing.position) (_startofs_e2_ : int) (_endofs_e2_ : int) (_loc_e2_ : Lexing.position * Lexing.position) (
# 42 "mmlparser.mly"
                op
# 122 "mmlparser.ml"
   : 'tv_binop) (_startpos_op_ : Lexing.position) (_endpos_op_ : Lexing.position) (_startofs_op_ : int) (_endofs_op_ : int) (_loc_op_ : Lexing.position * Lexing.position) (
# 42 "mmlparser.mly"
  e1
# 126 "mmlparser.ml"
   : 'tv_expression) (_startpos_e1_ : Lexing.position) (_endpos_e1_ : Lexing.position) (_startofs_e1_ : int) (_endofs_e1_ : int) (_loc_e1_ : Lexing.position * Lexing.position) ->
    (
# 42 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 131 "mmlparser.ml"
     : 'tv_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 41 "mmlparser.mly"
  e
# 136 "mmlparser.ml"
   : 'tv_simple_expression) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) ->
    (
# 41 "mmlparser.mly"
                      ( e )
# 141 "mmlparser.ml"
     : 'tv_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 47 "mmlparser.mly"
 _1
# 146 "mmlparser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 47 "mmlparser.mly"
       ( Mul )
# 151 "mmlparser.ml"
     : 'tv_binop) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 46 "mmlparser.mly"
 _1
# 156 "mmlparser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 46 "mmlparser.mly"
       ( Add )
# 161 "mmlparser.ml"
     : 'tv_binop) in
  ((let rec diverge() = diverge() in diverge()) : 'tv_simple_expression * 'tv_program * 'tv_expression * 'tv_binop)

and menhir_end_marker =
  0
