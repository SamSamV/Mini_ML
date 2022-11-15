%{

  open Lexing
  open Mml

%}

%token PLUS STAR MINUS EQUAL LPAR RPAR
%token <int> CST
%token <string> IDENT
%token FUN ARROW LET REC IN IF THEN ELSE
%token EOF

%left PLUS
%left STAR

%start program
%type <Mml.prog> program

%%

program:
| e=expression EOF { e }
| error
    {
      let pos = $startpos in
      let message = Printf.sprintf
        "echec à la position %d, %d"
        pos.pos_lnum
        (pos.pos_cnum - pos.pos_bol)
      in
      failwith message }
| (* à compléter *) code=expression EOF { {types=[]; code} }
;

simple_expression:
| n=CST { Int(n) }
| x=IDENT { Var(n) }
;

expression:
| e=simple_expression { e }
| e1=expression op=binop e2=expression { Bop(op, e1, e2) }
;

%inline binop:
| PLUS { Add }
| STAR { Mul }
;

