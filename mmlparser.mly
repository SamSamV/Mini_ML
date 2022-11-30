%{

  open Lexing
  open Mml

%}

%token PLUS STAR MINUS DIV
%token <int> CST
%token <string> IDENT
%token LPAR
%token RPAR
%token IF
%token THEN
%token ELSE
%token EQUALS
%token EQONLY
%token LET
%token IN
//%token FUN LET REC IN IF THEN ELSE
%token EOF
%token MOD 
%token AND 
%token LE
%token LT
%token NEQ
%token OR
%token NOT
%token LARROW RARROW

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
;

expression:
| e=simple_expression { e }
| e1=expression op=binop e2=expression { Bop(op, e1, e2) }
| op=unop e=simple_expression {Uop(op, e)}
| e1=expression e2=simple_expression { App(e1, e2)}
| LPAR; e=expression; RPAR { e }
| IF; e1=expression; THEN; e2=expression; ELSE; e3=expression {If(e1,e2,e3)}
| IF; e1=expression; THEN; e2=expression {If(e1,e2,Unit)}
| LET; x=IDENT; EQONLY; e1=expression; IN; e2=expression {Let(x,e1,e2)}
| FUN; x=IDENT; RARROW; e=expression {Fun(x, ,e)}
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

