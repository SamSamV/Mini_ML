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
    | Unit -> TUnit
    | Bool _ -> TBool
    | Bop((Add | Mul | Sub | Div | Mod ), e1, e2) -> 
        check e1 TInt tenv; check e2 TInt tenv; TInt
    | Bop((Lt | Le ), e1, e2) ->
        check e1 TInt tenv; check e2 TInt tenv; TBool
    | Bop((Eq | Neq ), e1, e2) ->
        let t1 = type_expr e1 tenv in
        let t2 = type_expr e2 tenv in 
        if t1 = t2 then TBool else failwith "type error"
    | Bop((And | Or), e1, e2) ->
        check e1 TBool tenv; check e2 TBool tenv; TBool
    | Uop (Neg, e) -> check e TInt tenv; TInt
    | Uop (Not, e) -> check e TBool tenv; TBool
    | Let(x, e1, e2) -> 
        let t1 = type_expr e1 tenv in type_expr e2 (SymTbl.add x t1 tenv)
    | Fun(x, tx, e) -> 
        let te = type_expr e (SymTbl.add x tx tenv) in
        TFun(tx, te)
    | If(e0, e1, e2) ->
        let t0 = type_expr e0 tenv in 
        let t1 = type_expr e1 tenv in
        let t2 = type_expr e2 tenv in 
        if t0 = TBool && t1 = t2 then t1 
        else if t0 = TBool && t2 = TUnit then t1
        else failwith "type error"
    | App(f, a) ->
        let tf = type_expr f tenv in
        let ta = type_expr a tenv in
        begin match tf with
        | TFun(tx, te) ->
            if tx = ta then te
            else failwith "type error"
        | _ -> failwith "type error"
        end
    | Fix(x,t1,e) ->
        let te = type_expr e (SymTbl.add x t1 tenv) in
        te
  in

  type_expr prog.code SymTbl.empty
