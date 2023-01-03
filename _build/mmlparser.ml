
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | UNIT_TYPE
    | UNIT
    | TWOPOINTS
    | TRUE
    | THEN
    | STAR
    | RPAR
    | RARROW
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
    | INT_TYPE
    | IN
    | IF
    | IDENT of (
# 10 "mmlparser.mly"
       (string)
# 36 "mmlparser.ml"
  )
    | FUN
    | FALSE
    | EQUALS
    | EQONLY
    | EOF
    | ELSE
    | DIV
    | CST of (
# 9 "mmlparser.mly"
       (int)
# 48 "mmlparser.ml"
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
  | MenhirState61
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState54
  | MenhirState53
  | MenhirState52
  | MenhirState51
  | MenhirState50
  | MenhirState48
  | MenhirState47
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState36
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState32
  | MenhirState31
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState24
  | MenhirState14
  | MenhirState13
  | MenhirState10
  | MenhirState8
  | MenhirState3
  | MenhirState0

# 1 "mmlparser.mly"
  

  open Lexing
  open Mml


# 113 "mmlparser.ml"

let rec _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45
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

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47
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

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Mml.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (x : (
# 10 "mmlparser.mly"
       (string)
# 524 "mmlparser.ml"
            ))), (tx : (Mml.typ))), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 71 "mmlparser.mly"
                                                                    (Fun(x, tx, e))
# 529 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DIV | ELSE | EOF | IN | MINUS | PLUS | RPAR | STAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 81 "mmlparser.mly"
       ( Mul )
# 571 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 576 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 88 "mmlparser.mly"
     (Or)
# 626 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 631 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ELSE | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 80 "mmlparser.mly"
       ( Add )
# 677 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 682 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 87 "mmlparser.mly"
      (Neq)
# 732 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 737 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 90 "mmlparser.mly"
      (Mod)
# 787 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 792 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36)
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | ELSE | EOF | IN | MINUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 82 "mmlparser.mly"
        ( Sub )
# 840 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 845 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 85 "mmlparser.mly"
     (Lt)
# 895 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 900 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 86 "mmlparser.mly"
     (Le)
# 950 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 955 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 83 "mmlparser.mly"
         ( Eq )
# 1005 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1010 "mmlparser.ml"
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
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | DIV | ELSE | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 84 "mmlparser.mly"
      ( Div)
# 1054 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1059 "mmlparser.ml"
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
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 89 "mmlparser.mly"
      (And)
# 1109 "mmlparser.ml"
             in
            
# 64 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1114 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState50 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
            | FALSE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | IDENT _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | LET ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | LPAR ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51)
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
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
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState52 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | FALSE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | IDENT _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LET ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LPAR ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 69 "mmlparser.mly"
                                         (If(e1,e2,Unit))
# 1271 "mmlparser.ml"
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
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))), _), _, (e3 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 68 "mmlparser.mly"
                                                              (If(e1,e2,e3))
# 1321 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54)
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState55 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | FALSE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | IDENT _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LET ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LPAR ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56)
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState55
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
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), (x : (
# 10 "mmlparser.mly"
       (string)
# 1444 "mmlparser.ml"
            ))), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 70 "mmlparser.mly"
                                                         (Let(x,e1,e2))
# 1449 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57)
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState58 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 67 "mmlparser.mly"
                           ( e )
# 1496 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | CST _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | DIV ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState61 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (code : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.prog) = 
# 51 "mmlparser.mly"
                                          ( {types=[]; code} )
# 1528 "mmlparser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Mml.prog)) = _v in
            Obj.magic _1
        | EQUALS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | FALSE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | IDENT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | LE ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | MOD ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | NEQ ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | OR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | PLUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | STAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | UNIT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
    | _ ->
        ();
        Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
        assert false

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> (Mml.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
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
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | FALSE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | IDENT _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | LET ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | LPAR ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_simple_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Mml.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (Mml.expr)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Mml.expr) = let op = 
# 93 "mmlparser.mly"
      ( Not )
# 1636 "mmlparser.ml"
         in
        
# 65 "mmlparser.mly"
                              (Uop(op, e))
# 1641 "mmlparser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (Mml.expr)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Mml.expr) = let op = 
# 94 "mmlparser.mly"
        ( Neg )
# 1652 "mmlparser.ml"
         in
        
# 65 "mmlparser.mly"
                              (Uop(op, e))
# 1657 "mmlparser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 | MenhirState10 | MenhirState56 | MenhirState13 | MenhirState53 | MenhirState51 | MenhirState14 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState31 | MenhirState29 | MenhirState27 | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (Mml.expr)) = _v in
        let _v : (Mml.expr) = 
# 63 "mmlparser.mly"
                      ( e )
# 1667 "mmlparser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState61 | MenhirState58 | MenhirState55 | MenhirState57 | MenhirState50 | MenhirState52 | MenhirState54 | MenhirState26 | MenhirState28 | MenhirState30 | MenhirState32 | MenhirState34 | MenhirState36 | MenhirState38 | MenhirState40 | MenhirState42 | MenhirState44 | MenhirState46 | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e2 : (Mml.expr)) = _v in
        let (_menhir_stack, _menhir_s, (e1 : (Mml.expr))) = _menhir_stack in
        let _v : (Mml.expr) = 
# 66 "mmlparser.mly"
                                     ( App(e1, e2))
# 1678 "mmlparser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
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
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
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
# 59 "mmlparser.mly"
       (Unit)
# 1852 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.expr) = 
# 57 "mmlparser.mly"
       ( Bool(true) )
# 1863 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
        | EQONLY ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
            | FALSE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | FUN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | IDENT _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
            | IF ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | LET ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | LPAR ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | MINUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | UNIT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13)
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

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | UNIT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "mmlparser.mly"
       (string)
# 2034 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 10 "mmlparser.mly"
       (string)
# 2042 "mmlparser.ml"
    )) = _v in
    let _v : (Mml.expr) = 
# 56 "mmlparser.mly"
          ( Var(x))
# 2047 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            | TWOPOINTS ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOL_TYPE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (Mml.typ) = 
# 76 "mmlparser.mly"
            (TBool)
# 2080 "mmlparser.ml"
                     in
                    _menhir_goto_typ _menhir_env _menhir_stack _v
                | INT_TYPE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (Mml.typ) = 
# 75 "mmlparser.mly"
           (TInt)
# 2090 "mmlparser.ml"
                     in
                    _menhir_goto_typ _menhir_env _menhir_stack _v
                | UNIT_TYPE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (Mml.typ) = 
# 77 "mmlparser.mly"
            (TUnit)
# 2100 "mmlparser.ml"
                     in
                    _menhir_goto_typ _menhir_env _menhir_stack _v
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

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.expr) = 
# 58 "mmlparser.mly"
        ( Bool(false) )
# 2135 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "mmlparser.mly"
       (int)
# 2142 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 9 "mmlparser.mly"
       (int)
# 2150 "mmlparser.ml"
    )) = _v in
    let _v : (Mml.expr) = 
# 55 "mmlparser.mly"
        ( Int(n) )
# 2155 "mmlparser.ml"
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
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | FALSE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IDENT _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAR ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
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
  

# 2213 "mmlparser.ml"
