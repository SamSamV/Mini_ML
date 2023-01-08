
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | UNIT_TYPE
    | UNIT
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
    | IDENT of (
# 10 "mmlparser.mly"
       (string)
# 39 "mmlparser.ml"
  )
    | FUN
    | FALSE
    | EQUALS
    | EQONLY
    | EOF
    | ELSE
    | DOTVIRG
    | DOT
    | DIV
    | CST of (
# 9 "mmlparser.mly"
       (int)
# 53 "mmlparser.ml"
  )
    | BOOL_TYPE
    | AND
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState85
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState75
  | MenhirState73
  | MenhirState72
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState63
  | MenhirState62
  | MenhirState61
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState54
  | MenhirState53
  | MenhirState52
  | MenhirState51
  | MenhirState50
  | MenhirState49
  | MenhirState48
  | MenhirState47
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState39
  | MenhirState36
  | MenhirState32
  | MenhirState31
  | MenhirState29
  | MenhirState24
  | MenhirState19
  | MenhirState17
  | MenhirState14
  | MenhirState5
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 1 "mmlparser.mly"
  

  open Lexing
  open Mml


# 130 "mmlparser.ml"

let rec _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_TYPE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | INT_TYPE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LPAR ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | UNIT_TYPE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_goto_list_let_arglist_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Mml.typ) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TWODOT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOL_TYPE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | INT_TYPE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | LPAR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | UNIT_TYPE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (string * Mml.typ))), _, (xs : ((string * Mml.typ) list))) = _menhir_stack in
        let _v : ((string * Mml.typ) list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 552 "mmlparser.ml"
         in
        _menhir_goto_list_let_arglist_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQONLY ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | IF ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Mml.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RARROW ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (t : (Mml.typ))) = _menhir_stack in
            let _v : (Mml.typ) = 
# 89 "mmlparser.mly"
                  (t)
# 619 "mmlparser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQONLY | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (t1 : (Mml.typ))), _, (t2 : (Mml.typ))) = _menhir_stack in
            let _v : (Mml.typ) = 
# 88 "mmlparser.mly"
                       (TFun(t1,t2))
# 639 "mmlparser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RARROW ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (xx : (
# 10 "mmlparser.mly"
       (string)
# 662 "mmlparser.ml"
            ))), _, (t : (Mml.typ))) = _menhir_stack in
            let _v : (string * Mml.typ) = 
# 81 "mmlparser.mly"
                                  ( (xx, t) )
# 667 "mmlparser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | EQONLY | TWODOT ->
                _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQONLY ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | IF ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
        | RARROW ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RARROW ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | CST _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
                | FALSE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | FUN ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | IDENT _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
                | IF ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | LET ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | LPAR ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | MINUS ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | NOT ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | UNIT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Mml.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (x : (
# 10 "mmlparser.mly"
       (string)
# 843 "mmlparser.ml"
            ))), _, (tx : (Mml.typ))), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 75 "mmlparser.mly"
                                                          (Fun(x, tx, e))
# 848 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DIV | ELSE | EOF | IN | MINUS | PLUS | RPAR | STAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 94 "mmlparser.mly"
       ( Mul )
# 892 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 897 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 101 "mmlparser.mly"
     ( Or )
# 949 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 954 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45)
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | ELSE | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 93 "mmlparser.mly"
       ( Add )
# 1002 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1007 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47)
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 100 "mmlparser.mly"
      ( Neq )
# 1059 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1064 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 103 "mmlparser.mly"
      ( Mod )
# 1116 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1121 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | ELSE | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 95 "mmlparser.mly"
        ( Sub )
# 1169 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1174 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 98 "mmlparser.mly"
     ( Lt )
# 1226 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1231 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 99 "mmlparser.mly"
     ( Le )
# 1283 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1288 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57)
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 96 "mmlparser.mly"
         ( Eq )
# 1340 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1345 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | DIV | ELSE | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 97 "mmlparser.mly"
      ( Div )
# 1391 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1396 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 102 "mmlparser.mly"
      ( And )
# 1448 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1453 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState65 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | IF ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState67 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | IF ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 74 "mmlparser.mly"
                                      (If(e1,e2,Unit))
# 1614 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))), _), _, (e3 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 73 "mmlparser.mly"
                                                         (If(e1,e2,e3))
# 1666 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState70 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | IF ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((((_menhir_stack, _menhir_s), (f : (
# 10 "mmlparser.mly"
       (string)
# 1793 "mmlparser.ml"
            ))), _, (t0 : ((string * Mml.typ) list))), _, (t1 : (Mml.typ))), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 77 "mmlparser.mly"
                                                                                           ( Let(f,Fix(f,(mk_fun_type t0 t1),(mk_fun t0 e1)),e2) )
# 1798 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72)
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState78 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | IF ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), (x : (
# 10 "mmlparser.mly"
       (string)
# 1925 "mmlparser.ml"
            ))), _, (t0 : ((string * Mml.typ) list))), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 76 "mmlparser.mly"
                                                                         (Let(x,mk_fun t0 e1,e2))
# 1930 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80)
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState81 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 65 "mmlparser.mly"
                           ( e )
# 1979 "mmlparser.ml"
             in
            _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | DIV ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState85 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (code : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.prog) = 
# 54 "mmlparser.mly"
                                          ( {types=[]; code} )
# 2011 "mmlparser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Mml.prog)) = _v in
            Obj.magic _1
        | EQUALS ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | LE ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | LT ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | MINUS ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | MOD ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | NEQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | OR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | STAR ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
    | _ ->
        _menhir_fail ()

and _menhir_run10 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (
# 10 "mmlparser.mly"
       (string)
# 2064 "mmlparser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (se : (Mml.expr))) = _menhir_stack in
        let _v : (Mml.expr) = 
# 63 "mmlparser.mly"
                                     ( GetF(se, x) )
# 2070 "mmlparser.ml"
         in
        _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((string * Mml.typ) list) = 
# 211 "<standard.mly>"
    ( [] )
# 2085 "mmlparser.ml"
     in
    _menhir_goto_list_let_arglist_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TWODOT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BOOL_TYPE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | INT_TYPE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | LPAR ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | UNIT_TYPE ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.typ) = 
# 87 "mmlparser.mly"
            (TUnit)
# 2138 "mmlparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_TYPE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | INT_TYPE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LPAR ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | UNIT_TYPE ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.typ) = 
# 85 "mmlparser.mly"
           (TInt)
# 2168 "mmlparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.typ) = 
# 86 "mmlparser.mly"
            (TBool)
# 2179 "mmlparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_simple_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Mml.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | AND | CST _ | DIV | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 107 "mmlparser.mly"
        ( Neg )
# 2200 "mmlparser.ml"
             in
            
# 71 "mmlparser.mly"
                              (Uop(op, e))
# 2205 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 | MenhirState4 | MenhirState79 | MenhirState77 | MenhirState71 | MenhirState31 | MenhirState68 | MenhirState66 | MenhirState32 | MenhirState62 | MenhirState60 | MenhirState58 | MenhirState56 | MenhirState54 | MenhirState52 | MenhirState50 | MenhirState48 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | AND | CST _ | DIV | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 69 "mmlparser.mly"
                      ( e )
# 2227 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState85 | MenhirState81 | MenhirState78 | MenhirState80 | MenhirState70 | MenhirState72 | MenhirState65 | MenhirState67 | MenhirState69 | MenhirState41 | MenhirState43 | MenhirState45 | MenhirState47 | MenhirState49 | MenhirState51 | MenhirState53 | MenhirState55 | MenhirState57 | MenhirState59 | MenhirState61 | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | AND | CST _ | DIV | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 72 "mmlparser.mly"
                                     ( App(e1, e2))
# 2249 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | AND | CST _ | DIV | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 106 "mmlparser.mly"
      ( Not )
# 2271 "mmlparser.ml"
             in
            
# 71 "mmlparser.mly"
                              (Uop(op, e))
# 2276 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.expr) = 
# 62 "mmlparser.mly"
       (Unit)
# 2506 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.expr) = 
# 60 "mmlparser.mly"
       ( Bool(true) )
# 2517 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | EQONLY ->
            _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75)
    | REC ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | TWODOT ->
                _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "mmlparser.mly"
       (string)
# 2688 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 10 "mmlparser.mly"
       (string)
# 2696 "mmlparser.ml"
    )) = _v in
    let _v : (Mml.expr) = 
# 59 "mmlparser.mly"
          ( Var(x))
# 2701 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | TWODOT ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOL_TYPE ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState36
                | INT_TYPE ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState36
                | LPAR ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState36
                | UNIT_TYPE ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.expr) = 
# 61 "mmlparser.mly"
        ( Bool(false) )
# 2765 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "mmlparser.mly"
       (int)
# 2772 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 9 "mmlparser.mly"
       (int)
# 2780 "mmlparser.ml"
    )) = _v in
    let _v : (Mml.expr) = 
# 58 "mmlparser.mly"
        ( Int(n) )
# 2785 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Mml.prog) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 2843 "mmlparser.ml"
