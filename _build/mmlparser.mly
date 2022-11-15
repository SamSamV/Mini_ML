%{
  open Lexing
  open Mml

%}

%token PLUS STAR
%token <int> CST
%token <string> IDENT
%token LPAR RPAR IF THEN ELSE FUN INDENT ARROW LET REC EQUAL IN MINUS
%token EOF

%nonassoc IN ELSE ARROW
%left PLUS MINUS
%left STAR
%left EQUAL
%left LPAR IDENT CST

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
| n=CST                  { Int(n) }
| x=IDENT                { Var(x) }
| LPAR e=expression RPAR { e      }
;

expression:
| e=simple_expression { e }
| e1=expression op=binop e2=expression                  { Bop(op, e1, e2) }
| IF c=expression THEN e1=expression ELSE e2=expression { If(c, e1, e2)   }
| FUN x=INDENT ARROW e=expression                       { Fun(x, e)       }
| e1=expression e2=simple_expression                    { App(e1, e2)     }
| LET r=option(REC) f=IDENT args=list(INDENT) EQUAL e1=expression IN e2=expression
;

%inline binop:
| PLUS { Add }
| MINUS { Sub }
| STAR { Mul }
| EQUAL { Eq }
;

