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
%token TYPE MUTABLE
%token INT_TYPE BOOL_TYPE UNIT_TYPE 


%nonassoc IN ELSE RARROW
%left AND OR
%left EQUALS LE LT
%left PLUS MINUS
%left STAR DIV
%left LPAR IDENT CST


%start program
%type <Mml.prog> program

%%

program:
| t=list(type_def) code=expression EOF { {types=[]; code} }
;

type_def:
| TYPE x=IDENT EQONLY LACC y1=type_def_arglist y2=list(type_def_arglist) RACC { (x, y1::y2) }
;

typ:
| INT_TYPE {TInt}
| BOOL_TYPE {TBool}
| UNIT_TYPE {TUnit}
| t1=typ RARROW t2=typ {TFun(t1,t2)}
| LPAR t=typ RPAR {t}
;

expression:
| e=simple_expression { e }
| e1=expression op=binop e2=expression { Bop(op, e1, e2) }
| op=unop e=simple_expression {Uop(op, e)}
| e1=expression e2=simple_expression { App(e1, e2)}
| IF e1=expression THEN e2=expression ELSE e3=expression {If(e1,e2,e3)}
| IF e1=expression THEN e2=expression {If(e1,e2,Unit)}
| FUN LPAR x=IDENT TWODOT tx=typ RPAR RARROW e=expression {Fun(x, tx, e)}
| LET x=IDENT t0=list(let_arglist) EQONLY e1=expression IN e2=expression { Let(x,mk_fun t0 e1,e2) }
| LET REC f=IDENT t0=list(let_arglist) t1=fun_typ EQONLY e1=expression IN e2=expression { Let(f,Fix(f,(mk_fun_type t0 t1),(mk_fun t0 e1)),e2) }
| e1=simple_expression DOT x=IDENT LARROW e2=expression {SetF (e1, x, e2)}
| e1=expression DOTVIRG e2=expression {Seq(e1, e2)}
;

simple_expression:
| n=CST { Int(n) }
| x=IDENT { Var(x)}
| TRUE { Bool(true) }
| FALSE { Bool(false) }
| UNIT {Unit}
| se=simple_expression DOT x=IDENT { GetF(se, x) } 
| LACC x=strct_arglist y=list(strct_arglist) RACC { Strct(x::y) }
| LPAR e=expression RPAR { e }
;

type_def_arglist:
| x=IDENT TWODOT t=typ DOTVIRG {(x,t)}
| MUTABLE x=IDENT TWODOT t=typ DOTVIRG {(x,t)}
;

fun_typ:
| TWODOT t=typ {t}
;

let_arglist:
| LPAR xx=IDENT TWODOT t=typ RPAR { (xx, t) }
;

strct_arglist:
|  x=IDENT EQONLY e1=expression DOTVIRG {(x,e1)}
;

%inline binop:
| PLUS { Add }
| STAR { Mul }
| MINUS { Sub }
| EQUALS { Eq }
| DIV { Div }
| LT { Lt }
| LE { Le }
| NEQ { Neq }
| OR { Or }
| AND { And }
| MOD { Mod }

%inline unop:
| NOT { Not }
| MINUS { Neg }
;

