open Mml

(* Environnement de typage : associe des types aux noms de variables *)
module SymTbl = Map.Make(String)
type tenv = typ SymTbl.t

(* Pour remonter des erreurs circonstanciées *)
exception Type_error of string
let error s = raise (Type_error s)
let type_error ty_actual ty_expected =
  error (Printf.sprintf "expected %s but got %s" 
           (typ_to_string ty_expected) (typ_to_string ty_actual))
(* vous pouvez ajouter d'autres types d'erreurs *)

(* Vérification des types d'un programme *)
let type_prog prog =

  (* Vérifie que l'expression [e] a le type [type] *)
  let rec check e typ tenv =
    let typ_e = type_expr e tenv in
    if typ_e <> typ then type_error typ_e typ

  (* Calcule le type de l'expression [e] *)
  and type_expr e tenv = match e with
    | Int _  -> TInt
    | Var(x) -> SymTbl.find x tenv
    | Bop((Add | Mul | Sub | Div | Mod ), e1, e2) -> 
        check e1 TInt tenv; check e2 TInt tenv; TInt
    | Let(x, e1, e2) -> 
        let t1 = type_expr e1 tenv in type_expr e2 (Env.add x t1 tenv)
    (*
    | App(f, a) ->
        check f TFun tenv; check a TUnit tenv; type_expr a tenv
        *)

  in

  type_expr prog.code SymTbl.empty
