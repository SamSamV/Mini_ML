
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
  | MenhirState91
  | MenhirState87
  | MenhirState86
  | MenhirState85
  | MenhirState84
  | MenhirState83
  | MenhirState81
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState74
  | MenhirState73
  | MenhirState72
  | MenhirState71
  | MenhirState70
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState64
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


# 134 "mmlparser.ml"

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

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run67 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | FALSE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | IF ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

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
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (string * Mml.typ))), _, (xs : ((string * Mml.typ) list))) = _menhir_stack in
        let _v : ((string * Mml.typ) list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 589 "mmlparser.ml"
         in
        _menhir_goto_list_let_arglist_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState81 ->
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
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | IF ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
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
# 66 "mmlparser.mly"
                  (t)
# 656 "mmlparser.ml"
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
# 65 "mmlparser.mly"
                       (TFun(t1,t2))
# 676 "mmlparser.ml"
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
# 699 "mmlparser.ml"
            ))), _, (t : (Mml.typ))) = _menhir_stack in
            let _v : (string * Mml.typ) = 
# 58 "mmlparser.mly"
                                  ( (xx, t) )
# 704 "mmlparser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAR ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | EQONLY | TWODOT ->
                _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)
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

and _menhir_reduce32 : _menhir_env -> (('ttv_tail * _menhir_state * (Mml.expr))) * (
# 10 "mmlparser.mly"
       (string)
# 835 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (se : (Mml.expr))), (x : (
# 10 "mmlparser.mly"
       (string)
# 841 "mmlparser.ml"
    ))) = _menhir_stack in
    let _v : (Mml.expr) = 
# 75 "mmlparser.mly"
                                   ( GetF(se, x) )
# 846 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Mml.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), (x : (
# 10 "mmlparser.mly"
       (string)
# 900 "mmlparser.ml"
            ))), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 90 "mmlparser.mly"
                                                        (SetF (e1, x, e2))
# 905 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | DIV | ELSE | EOF | IN | MINUS | PLUS | RPAR | STAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 96 "mmlparser.mly"
       ( Mul )
# 951 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 956 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 103 "mmlparser.mly"
     ( Or )
# 1010 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1015 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | ELSE | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 95 "mmlparser.mly"
       ( Add )
# 1065 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1070 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 102 "mmlparser.mly"
      ( Neq )
# 1124 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1129 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52)
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 105 "mmlparser.mly"
      ( Mod )
# 1183 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1188 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54)
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | ELSE | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 97 "mmlparser.mly"
        ( Sub )
# 1238 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1243 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56)
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 100 "mmlparser.mly"
     ( Lt )
# 1297 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1302 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58)
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 101 "mmlparser.mly"
     ( Le )
# 1356 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1361 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60)
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 98 "mmlparser.mly"
         ( Eq )
# 1415 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1420 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62)
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 91 "mmlparser.mly"
                                      (Seq (e1, e2))
# 1474 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | DIV | ELSE | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 99 "mmlparser.mly"
      ( Div )
# 1522 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1527 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 104 "mmlparser.mly"
      ( And )
# 1581 "mmlparser.ml"
             in
            
# 82 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1586 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (x : (
# 10 "mmlparser.mly"
       (string)
# 1639 "mmlparser.ml"
            ))), _, (tx : (Mml.typ))), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 87 "mmlparser.mly"
                                                          (Fun(x, tx, e))
# 1644 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState71 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
            | IF ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | LET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72)
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState73 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | IF ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74)
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 86 "mmlparser.mly"
                                      (If(e1,e2,Unit))
# 1809 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73)
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))), _), _, (e3 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 85 "mmlparser.mly"
                                                         (If(e1,e2,e3))
# 1863 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState76 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
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
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76)
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((((_menhir_stack, _menhir_s), (f : (
# 10 "mmlparser.mly"
       (string)
# 1994 "mmlparser.ml"
            ))), _, (t0 : ((string * Mml.typ) list))), _, (t1 : (Mml.typ))), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 89 "mmlparser.mly"
                                                                                           ( Let(f,Fix(f,(mk_fun_type t0 t1),(mk_fun t0 e1)),e2) )
# 1999 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState84 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | FALSE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | IF ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | LET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), (x : (
# 10 "mmlparser.mly"
       (string)
# 2130 "mmlparser.ml"
            ))), _, (t0 : ((string * Mml.typ) list))), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 88 "mmlparser.mly"
                                                                         ( Let(x,mk_fun t0 e1,e2) )
# 2135 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86)
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState87 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 77 "mmlparser.mly"
                         ( e )
# 2186 "mmlparser.ml"
             in
            _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | CST _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | DIV ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | DOTVIRG ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState91 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (code : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.prog) = 
# 54 "mmlparser.mly"
                                          ( {types=[]; code} )
# 2220 "mmlparser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Mml.prog)) = _v in
            Obj.magic _1
        | EQUALS ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | FALSE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | IDENT _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | LE ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MINUS ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MOD ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | NEQ ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | OR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | PLUS ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | STAR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91)
    | _ ->
        _menhir_fail ()

and _menhir_run10 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((string * Mml.typ) list) = 
# 211 "<standard.mly>"
    ( [] )
# 2283 "mmlparser.ml"
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
# 64 "mmlparser.mly"
            (TUnit)
# 2336 "mmlparser.ml"
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
# 62 "mmlparser.mly"
           (TInt)
# 2366 "mmlparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.typ) = 
# 63 "mmlparser.mly"
            (TBool)
# 2377 "mmlparser.ml"
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
        | AND | CST _ | DIV | DOTVIRG | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 109 "mmlparser.mly"
        ( Neg )
# 2398 "mmlparser.ml"
             in
            
# 83 "mmlparser.mly"
                              (Uop(op, e))
# 2403 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 | MenhirState4 | MenhirState85 | MenhirState83 | MenhirState77 | MenhirState31 | MenhirState74 | MenhirState72 | MenhirState32 | MenhirState67 | MenhirState65 | MenhirState63 | MenhirState61 | MenhirState59 | MenhirState57 | MenhirState55 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
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
                | LARROW ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | CST _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
                    | FALSE ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                    | FUN ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                    | IDENT _v ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
                    | IF ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                    | LET ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                    | LPAR ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                    | MINUS ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                    | NOT ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                    | TRUE ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                    | UNIT ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
                | AND | CST _ | DIV | DOT | DOTVIRG | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
                    _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | AND | CST _ | DIV | DOTVIRG | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 81 "mmlparser.mly"
                      ( e )
# 2479 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState91 | MenhirState87 | MenhirState84 | MenhirState86 | MenhirState76 | MenhirState78 | MenhirState71 | MenhirState73 | MenhirState75 | MenhirState70 | MenhirState44 | MenhirState46 | MenhirState48 | MenhirState50 | MenhirState52 | MenhirState54 | MenhirState56 | MenhirState58 | MenhirState60 | MenhirState62 | MenhirState64 | MenhirState66 | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | AND | CST _ | DIV | DOTVIRG | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 84 "mmlparser.mly"
                                     ( App(e1, e2))
# 2501 "mmlparser.ml"
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
        | AND | CST _ | DIV | DOTVIRG | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 108 "mmlparser.mly"
      ( Not )
# 2523 "mmlparser.ml"
             in
            
# 83 "mmlparser.mly"
                              (Uop(op, e))
# 2528 "mmlparser.ml"
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
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
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
# 74 "mmlparser.mly"
       (Unit)
# 2774 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.expr) = 
# 72 "mmlparser.mly"
       ( Bool(true) )
# 2785 "mmlparser.ml"
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
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | EQONLY ->
            _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
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
                _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState14
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
# 2956 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 10 "mmlparser.mly"
       (string)
# 2964 "mmlparser.ml"
    )) = _v in
    let _v : (Mml.expr) = 
# 71 "mmlparser.mly"
          ( Var(x))
# 2969 "mmlparser.ml"
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
# 73 "mmlparser.mly"
        ( Bool(false) )
# 3033 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "mmlparser.mly"
       (int)
# 3040 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 9 "mmlparser.mly"
       (int)
# 3048 "mmlparser.ml"
    )) = _v in
    let _v : (Mml.expr) = 
# 70 "mmlparser.mly"
        ( Int(n) )
# 3053 "mmlparser.ml"
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
  

# 3111 "mmlparser.ml"
