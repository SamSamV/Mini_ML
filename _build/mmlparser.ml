
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = 
    | UNIT_TYPE
    | UNIT
    | TYPE
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
    | MUTABLE
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
# 41 "mmlparser.ml"
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
# 55 "mmlparser.ml"
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
  | MenhirState123
  | MenhirState120
  | MenhirState115
  | MenhirState114
  | MenhirState113
  | MenhirState112
  | MenhirState111
  | MenhirState110
  | MenhirState109
  | MenhirState108
  | MenhirState106
  | MenhirState104
  | MenhirState103
  | MenhirState102
  | MenhirState101
  | MenhirState100
  | MenhirState99
  | MenhirState98
  | MenhirState97
  | MenhirState96
  | MenhirState95
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState85
  | MenhirState84
  | MenhirState83
  | MenhirState82
  | MenhirState81
  | MenhirState80
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
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState60
  | MenhirState57
  | MenhirState52
  | MenhirState51
  | MenhirState48
  | MenhirState44
  | MenhirState41
  | MenhirState38
  | MenhirState36
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState30
  | MenhirState27
  | MenhirState23
  | MenhirState22
  | MenhirState19
  | MenhirState14
  | MenhirState9
  | MenhirState7
  | MenhirState4
  | MenhirState0

# 1 "mmlparser.mly"
  

  open Lexing
  open Mml


# 149 "mmlparser.ml"

let rec _menhir_goto_list_strct_arglist_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Mml.expr) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (string * Mml.expr))), _, (xs : ((string * Mml.expr) list))) = _menhir_stack in
        let _v : ((string * Mml.expr) list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 162 "mmlparser.ml"
         in
        _menhir_goto_list_strct_arglist_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RACC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (x : (string * Mml.expr))), _, (y : ((string * Mml.expr) list))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 89 "mmlparser.mly"
                                                  ( Strct(x::y) )
# 178 "mmlparser.ml"
             in
            _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_type_def_arglist_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Mml.typ) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (string * Mml.typ))), _, (xs : ((string * Mml.typ) list))) = _menhir_stack in
        let _v : ((string * Mml.typ) list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 201 "mmlparser.ml"
         in
        _menhir_goto_list_type_def_arglist_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RACC ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (x : (
# 10 "mmlparser.mly"
       (string)
# 216 "mmlparser.ml"
            ))), _, (y1 : (string * Mml.typ))), _, (y2 : ((string * Mml.typ) list))) = _menhir_stack in
            let _v : (string * (string * Mml.typ) list) = 
# 57 "mmlparser.mly"
                                                                              ( (x, y1::y2) )
# 221 "mmlparser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | TYPE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | CST _ | FALSE | FUN | IDENT _ | IF | LACC | LET | LPAR | MINUS | NOT | TRUE | UNIT ->
                _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((string * Mml.expr) list) = 
# 211 "<standard.mly>"
    ( [] )
# 250 "mmlparser.ml"
     in
    _menhir_goto_list_strct_arglist_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run89 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89

and _menhir_run91 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run93 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((string * Mml.typ) list) = 
# 211 "<standard.mly>"
    ( [] )
# 679 "mmlparser.ml"
     in
    _menhir_goto_list_type_def_arglist_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_let_arglist_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Mml.typ) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState41 ->
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
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | INT_TYPE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | LPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | UNIT_TYPE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (string * Mml.typ))), _, (xs : ((string * Mml.typ) list))) = _menhir_stack in
        let _v : ((string * Mml.typ) list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 722 "mmlparser.ml"
         in
        _menhir_goto_list_let_arglist_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState106 ->
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
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | FUN ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | IDENT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | IF ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | LACC ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | LET ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | LPAR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | MINUS ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | NOT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | UNIT ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run87 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Mml.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), (x : (
# 10 "mmlparser.mly"
       (string)
# 841 "mmlparser.ml"
            ))), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 78 "mmlparser.mly"
                                                        (SetF (e1, x, e2))
# 846 "mmlparser.ml"
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
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | AND | DIV | ELSE | EOF | EQUALS | IN | LE | LT | MINUS | OR | PLUS | RPAR | STAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 112 "mmlparser.mly"
       ( Mul )
# 884 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 889 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 118 "mmlparser.mly"
      ( Neq )
# 945 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 950 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | AND | ELSE | EOF | EQUALS | IN | LE | LT | MINUS | OR | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 111 "mmlparser.mly"
       ( Add )
# 992 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 997 "mmlparser.ml"
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
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 121 "mmlparser.mly"
      ( Mod )
# 1053 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1058 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75)
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | AND | ELSE | EOF | IN | OR | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 119 "mmlparser.mly"
     ( Or )
# 1110 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1115 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | AND | ELSE | EOF | EQUALS | IN | LE | LT | MINUS | OR | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 113 "mmlparser.mly"
        ( Sub )
# 1157 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1162 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)
    | MenhirState113 | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 79 "mmlparser.mly"
                                      (Seq(e1, e2))
# 1218 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState83
        | AND | ELSE | EOF | EQUALS | IN | LE | LT | OR | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 116 "mmlparser.mly"
     ( Lt )
# 1264 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1269 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | AND | DIV | ELSE | EOF | EQUALS | IN | LE | LT | MINUS | OR | PLUS | RPAR | STAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 115 "mmlparser.mly"
      ( Div )
# 1307 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1312 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | AND | ELSE | EOF | EQUALS | IN | LE | LT | OR | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 117 "mmlparser.mly"
     ( Le )
# 1358 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1363 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90)
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | AND | ELSE | EOF | EQUALS | IN | LE | LT | OR | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 114 "mmlparser.mly"
         ( Eq )
# 1409 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1414 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92)
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | AND | ELSE | EOF | IN | OR | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 120 "mmlparser.mly"
      ( And )
# 1466 "mmlparser.ml"
             in
            
# 70 "mmlparser.mly"
                                       ( Bop(op, e1, e2) )
# 1471 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (x : (
# 10 "mmlparser.mly"
       (string)
# 1526 "mmlparser.ml"
            ))), _, (tx : (Mml.typ))), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 75 "mmlparser.mly"
                                                          (Fun(x, tx, e))
# 1531 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState96 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | FUN ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | IDENT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | IF ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LACC ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LET ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LPAR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | MINUS ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | NOT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | UNIT ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState98 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | FUN ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | IDENT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | IF ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | LACC ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | LET ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | LPAR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | MINUS ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | NOT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | UNIT ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 74 "mmlparser.mly"
                                      (If(e1,e2,Unit))
# 1704 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))), _), _, (e3 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 73 "mmlparser.mly"
                                                         (If(e1,e2,e3))
# 1760 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100)
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState101 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | FUN ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | IDENT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | IF ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LACC ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LET ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LPAR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | MINUS ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | NOT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | UNIT ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((((_menhir_stack, _menhir_s), (f : (
# 10 "mmlparser.mly"
       (string)
# 1897 "mmlparser.ml"
            ))), _, (t0 : ((string * Mml.typ) list))), (t1 : (Mml.typ))), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 77 "mmlparser.mly"
                                                                                        ( Let(f,Fix(f,(mk_fun_type t0 t1),(mk_fun t0 e1)),e2) )
# 1902 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103)
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState109 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | FUN ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | IDENT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | IF ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LACC ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LET ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LPAR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | MINUS ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | NOT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | UNIT ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110)
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | ELSE | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), (x : (
# 10 "mmlparser.mly"
       (string)
# 2039 "mmlparser.ml"
            ))), _, (t0 : ((string * Mml.typ) list))), _, (e1 : (Mml.expr))), _), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 76 "mmlparser.mly"
                                                                         ( Let(x,mk_fun t0 e1,e2) )
# 2044 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | DOTVIRG ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState112 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CST _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | FALSE ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | FUN ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | IDENT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | IF ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LACC ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LET ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LPAR ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | MINUS ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | NOT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | TRUE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | UNIT ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | RACC ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s, (x : (
# 10 "mmlparser.mly"
       (string)
# 2098 "mmlparser.ml"
                ))), _, (e1 : (Mml.expr))), _) = _menhir_stack in
                let _v : (string * Mml.expr) = 
# 107 "mmlparser.mly"
                                        ((x,e1))
# 2103 "mmlparser.ml"
                 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                (match _menhir_s with
                | MenhirState36 ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    assert (not _menhir_env._menhir_error);
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | IDENT _v ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
                    | RACC ->
                        _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114)
                | MenhirState115 | MenhirState114 ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    assert (not _menhir_env._menhir_error);
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | IDENT _v ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
                    | RACC ->
                        _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115)
                | _ ->
                    _menhir_fail ())
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState120 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 90 "mmlparser.mly"
                         ( e )
# 2219 "mmlparser.ml"
             in
            _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | DIV ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | DOTVIRG ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState123 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (t : ((string * (string * Mml.typ) list) list))), _, (code : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.prog) = 
# 53 "mmlparser.mly"
                                       ( {types=[]; code} )
# 2253 "mmlparser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Mml.prog)) = _v in
            Obj.magic _1
        | EQUALS ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | MINUS ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | MOD ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | NEQ ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | OR ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | PLUS ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | STAR ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
    | _ ->
        _menhir_fail ()

and _menhir_reduce39 : _menhir_env -> (('ttv_tail * _menhir_state * (Mml.expr))) * (
# 10 "mmlparser.mly"
       (string)
# 2299 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (se : (Mml.expr))), (x : (
# 10 "mmlparser.mly"
       (string)
# 2305 "mmlparser.ml"
    ))) = _menhir_stack in
    let _v : (Mml.expr) = 
# 88 "mmlparser.mly"
                                   ( GetF(se, x) )
# 2310 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_type_def_arglist : _menhir_env -> 'ttv_tail -> _menhir_state -> (string * Mml.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | MUTABLE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | RACC ->
            _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
    | MenhirState23 | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | MUTABLE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | RACC ->
            _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * (Mml.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_TYPE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INT_TYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | UNIT_TYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_reduce25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((string * Mml.typ) list) = 
# 211 "<standard.mly>"
    ( [] )
# 2374 "mmlparser.ml"
     in
    _menhir_goto_list_let_arglist_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | INT_TYPE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | LPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | UNIT_TYPE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
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

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "mmlparser.mly"
       (string)
# 2423 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQONLY ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FUN ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | IF ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | NOT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_simple_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Mml.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 | MenhirState34 | MenhirState113 | MenhirState38 | MenhirState110 | MenhirState108 | MenhirState102 | MenhirState51 | MenhirState99 | MenhirState97 | MenhirState52 | MenhirState93 | MenhirState91 | MenhirState89 | MenhirState84 | MenhirState82 | MenhirState80 | MenhirState78 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState68 | MenhirState66 | MenhirState60 ->
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
                        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
                    | FALSE ->
                        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | FUN ->
                        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | IDENT _v ->
                        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
                    | IF ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | LACC ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | LET ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | LPAR ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | MINUS ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | NOT ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | TRUE ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | UNIT ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
                | AND | CST _ | DIV | DOT | DOTVIRG | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LACC | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
                    _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack)
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
        | AND | CST _ | DIV | DOTVIRG | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LACC | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 69 "mmlparser.mly"
                      ( e )
# 2543 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState123 | MenhirState120 | MenhirState112 | MenhirState109 | MenhirState111 | MenhirState101 | MenhirState103 | MenhirState96 | MenhirState98 | MenhirState100 | MenhirState95 | MenhirState67 | MenhirState69 | MenhirState71 | MenhirState73 | MenhirState75 | MenhirState77 | MenhirState79 | MenhirState81 | MenhirState94 | MenhirState92 | MenhirState90 | MenhirState83 | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | AND | CST _ | DIV | DOTVIRG | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LACC | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Mml.expr))), _, (e2 : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = 
# 72 "mmlparser.mly"
                                     ( App(e1, e2))
# 2565 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | AND | CST _ | DIV | DOTVIRG | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LACC | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 125 "mmlparser.mly"
        ( Neg )
# 2587 "mmlparser.ml"
             in
            
# 71 "mmlparser.mly"
                              (Uop(op, e))
# 2592 "mmlparser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | AND | CST _ | DIV | DOTVIRG | ELSE | EOF | EQUALS | FALSE | IDENT _ | IN | LACC | LE | LPAR | LT | MINUS | MOD | NEQ | OR | PLUS | RPAR | STAR | THEN | TRUE | UNIT ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Mml.expr))) = _menhir_stack in
            let _v : (Mml.expr) = let op = 
# 124 "mmlparser.mly"
      ( Not )
# 2614 "mmlparser.ml"
             in
            
# 71 "mmlparser.mly"
                              (Uop(op, e))
# 2619 "mmlparser.ml"
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

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Mml.typ) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (t : (Mml.typ))) = _menhir_stack in
            let _v : (Mml.typ) = 
# 65 "mmlparser.mly"
                  (t)
# 2650 "mmlparser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOTVIRG | EQONLY | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (t1 : (Mml.typ))), _, (t2 : (Mml.typ))) = _menhir_stack in
            let _v : (Mml.typ) = 
# 64 "mmlparser.mly"
                       (TFun(t1,t2))
# 2670 "mmlparser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOTVIRG ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (x : (
# 10 "mmlparser.mly"
       (string)
# 2691 "mmlparser.ml"
            ))), _, (t : (Mml.typ))) = _menhir_stack in
            let _v : (string * Mml.typ) = 
# 95 "mmlparser.mly"
                                       ((x,t))
# 2696 "mmlparser.ml"
             in
            _menhir_goto_type_def_arglist _menhir_env _menhir_stack _menhir_s _v
        | RARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOTVIRG ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (x : (
# 10 "mmlparser.mly"
       (string)
# 2719 "mmlparser.ml"
            ))), _, (t : (Mml.typ))) = _menhir_stack in
            let _v : (string * Mml.typ) = 
# 94 "mmlparser.mly"
                               ((x,t))
# 2724 "mmlparser.ml"
             in
            _menhir_goto_type_def_arglist _menhir_env _menhir_stack _menhir_s _v
        | RARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (xx : (
# 10 "mmlparser.mly"
       (string)
# 2749 "mmlparser.ml"
            ))), _, (t : (Mml.typ))) = _menhir_stack in
            let _v : (string * Mml.typ) = 
# 103 "mmlparser.mly"
                                  ( (xx, t) )
# 2754 "mmlparser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAR ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | EQONLY | TWODOT ->
                _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | EQONLY ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (t : (Mml.typ))) = _menhir_stack in
            let _v : (Mml.typ) = 
# 99 "mmlparser.mly"
               (t)
# 2788 "mmlparser.ml"
             in
            let _menhir_stack = (_menhir_stack, _v) in
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
                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
                | FALSE ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | FUN ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | IDENT _v ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
                | IF ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | LACC ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | LET ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | LPAR ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | MINUS ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | NOT ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | TRUE ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | UNIT ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51)
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
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
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
                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
                | FALSE ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | FUN ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | IDENT _v ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
                | IF ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | LACC ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | LET ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | LPAR ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | MINUS ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | NOT ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | TRUE ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | UNIT ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60)
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

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.expr) = 
# 87 "mmlparser.mly"
       (Unit)
# 2912 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.expr) = 
# 85 "mmlparser.mly"
       ( Bool(true) )
# 2923 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | EQONLY ->
            _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
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
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | TWODOT ->
                _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
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

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | FALSE ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | FUN ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | IDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IF ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LACC ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LET ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAR ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | MINUS ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NOT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | TRUE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | UNIT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "mmlparser.mly"
       (string)
# 3115 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 10 "mmlparser.mly"
       (string)
# 3123 "mmlparser.ml"
    )) = _v in
    let _v : (Mml.expr) = 
# 84 "mmlparser.mly"
          ( Var(x))
# 3128 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState57
                | INT_TYPE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState57
                | LPAR ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState57
                | UNIT_TYPE ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57)
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

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.expr) = 
# 86 "mmlparser.mly"
        ( Bool(false) )
# 3192 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run62 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "mmlparser.mly"
       (int)
# 3199 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 9 "mmlparser.mly"
       (int)
# 3207 "mmlparser.ml"
    )) = _v in
    let _v : (Mml.expr) = 
# 83 "mmlparser.mly"
        ( Int(n) )
# 3212 "mmlparser.ml"
     in
    _menhir_goto_simple_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.typ) = 
# 63 "mmlparser.mly"
            (TUnit)
# 3223 "mmlparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_TYPE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | INT_TYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LPAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | UNIT_TYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.typ) = 
# 61 "mmlparser.mly"
           (TInt)
# 3253 "mmlparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Mml.typ) = 
# 62 "mmlparser.mly"
            (TBool)
# 3264 "mmlparser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_type_def_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * (string * Mml.typ) list) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (string * (string * Mml.typ) list))), _, (xs : ((string * (string * Mml.typ) list) list))) = _menhir_stack in
        let _v : ((string * (string * Mml.typ) list) list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 3279 "mmlparser.ml"
         in
        _menhir_goto_list_type_def_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CST _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | FALSE ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FUN ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | IDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | IF ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LACC ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LET ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LPAR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MINUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NOT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | TRUE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | UNIT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
    | _ ->
        _menhir_fail ()

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | INT_TYPE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | LPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | UNIT_TYPE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7)
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

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "mmlparser.mly"
       (string)
# 3363 "mmlparser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TWODOT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL_TYPE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | INT_TYPE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | UNIT_TYPE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState111 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
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
        let (_menhir_stack, _menhir_s) = _menhir_stack in
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
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((string * (string * Mml.typ) list) list) = 
# 211 "<standard.mly>"
    ( [] )
# 3677 "mmlparser.ml"
     in
    _menhir_goto_list_type_def_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            | LACC ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENT _v ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
                | MUTABLE ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4)
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
    | TYPE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CST _ | FALSE | FUN | IDENT _ | IF | LACC | LET | LPAR | MINUS | NOT | TRUE | UNIT ->
        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 3766 "mmlparser.ml"
