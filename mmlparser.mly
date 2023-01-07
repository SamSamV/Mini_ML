%{

  open Lexing
  open Mml

%}

%token PLUS STAR MINUS DIV
%token <int> CST
%token <string> IDENT
%token UNIT
%token LPAR
%token RPAR
%token IF
%token THEN
%token ELSE
%token EQUALS
%token EQONLY
%token LET
%token REC
%token IN
%token FUN
%token EOF
%token MOD 
%token AND 
%token LE
%token LT
%token NEQ
%token OR
%token NOT
%token LARROW RARROW
%token LACC RACC
%token TRUE FALSE
%token TWODOT DOT DOTVIRG

//%token COLON
%token INT_TYPE BOOL_TYPE UNIT_TYPE 


%left MINUS
%left PLUS
%left DIV
%left STAR


%start program
%type <Mml.prog> program

%%

program:
| (* à compléter *) code=expression EOF { {types=[]; code} }
;

simple_expression:
| n=CST { Int(n) }
| x=IDENT { Var(x)}
| TRUE { Bool(true) }
| FALSE { Bool(false) }
| UNIT {Unit}
| se=simple_expression; DOT; x=IDENT { GetF(se, x) } 
//| LACC (x=IDENT EQONLY e=expression DOTVIRG)+ RACC { Strct(x,e) }
| LPAR; e=expression; RPAR { e }
;

expression:
| e=simple_expression { e }
| e1=expression op=binop e2=expression { Bop(op, e1, e2) }
| op=unop e=simple_expression {Uop(op, e)}
| e1=expression e2=simple_expression { App(e1, e2)}
| IF; e1=expression; THEN; e2=expression; ELSE; e3=expression {If(e1,e2,e3)}
| IF; e1=expression; THEN; e2=expression {If(e1,e2,Unit)}
| FUN; LPAR; x=IDENT; TWODOT; tx=typ; RPAR; RARROW; e=expression {Fun(x, tx, e)}
| LET x=IDENT list(arg_list) EQONLY e1=expression IN e2=expression {Let(x,e1,e2)}
| LET REC f=IDENT list(arg_list) TWODOT t=typ EQONLY e1=expression IN e2=expression {Let("f", Fix("f", t, e1), e2)}
;

arg_list:
| LPAR xx=IDENT TWODOT t=typ RPAR { (xx, t)}

typ:
| INT_TYPE {TInt}
| BOOL_TYPE {TBool}
| UNIT_TYPE {TUnit}
;

%inline binop:
| PLUS { Add }
| STAR { Mul }
| MINUS { Sub }
| EQUALS { Eq }
| DIV { Div}
| LT {Lt}
| LE {Le}
| NEQ {Neq}
| OR {Or}
| AND {And}
| MOD {Mod}

%inline unop:
| NOT { Not }
| MINUS { Neg }
;

