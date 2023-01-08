(* Interprète Mini-ML *)

open Mml

(* Environnement : associe des valeurs à des noms de variables *)
module Env = Map.Make(String)

(* Valeurs *)
type value =
  | VInt   of int
  | VBool  of bool
  | VUnit
  | VPtr   of int
(* Élements du tas *)
type heap_value =
  | VClos  of string * expr * value Env.t
  | VStrct of (string, value) Hashtbl.t

let print_value = function
  | VInt n  -> Printf.printf "%d\n" n
  | VBool b -> Printf.printf "%b\n" b
  | VUnit   -> Printf.printf "()\n"
  | VPtr p  -> Printf.printf "@%d\n" p

(* Interprétation d'un programme complet *)
let eval_prog (p: prog): value =
  
  (* Initialisation de la mémoire globale *)
  let (mem: (int, heap_value) Hashtbl.t) = Hashtbl.create 16 in

  (* Création de nouvelles adresses *)
  let new_ptr =
    let cpt = ref 0 in
    fun () -> incr cpt; !cpt
  in

  (* Interprétation d'une expression, en fonction d'un environnement
     et de la mémoire globale *)
  let rec eval (e: expr) (env: value Env.t): value = 
    match e with
    | Int n  -> VInt n
    | Bool b -> VBool b
    | Var x -> Env.find x env
    | Bop(Add, e1, e2) -> VInt (evali e1 env + evali e2 env)
    | Bop(Mul, e1, e2) -> VInt (evali e1 env * evali e2 env)
    | Bop(Sub, e1, e2) -> VInt (evali e1 env - evali e2 env)
    | Bop(Div, e1, e2) -> VInt (evali e1 env / evali e2 env)
    | Bop(Mod, e1, e2) -> VInt (evali e1 env mod evali e2 env)
    | Bop(Eq, e1, e2) -> VBool (eval e1 env == eval e2 env)
    | Bop(Neq, e1, e2) -> VBool (eval e1 env != eval e2 env)
    | Bop(Lt, e1, e2) -> VBool (evali e1 env < evali e2 env)
    | Bop(Le, e1, e2) -> VBool (evali e1 env <= evali e2 env)
    | Bop(And, e1, e2) -> VBool (evalb e1 env && evalb e2 env)
    | Bop(Or, e1, e2) -> VBool (evalb e1 env || evalb e2 env)
    | Uop(Not, e1) -> VBool ( not(evalb e1 env) )
    | Uop(Neg, e1) -> VInt ( -(evali e1 env) )
    | If (e0, e1, e2) -> begin match eval e0 env with
                        | VBool n -> if n != false then
                                      eval e1 env
                                    else
                                      eval e2 env
                        | _ -> assert false
                        end
    | Let (x , e1 , e2 ) ->
        let v1 = eval e1 env in
        let env2 = Env.add x v1 env in
        eval e2 env2
    | Fun(x, _, e) -> 
        let n = new_ptr() in
        Hashtbl.add mem n (VClos(x,e,env));
        VPtr(n)
    | App (e1, e2) ->
      let eve1 = eval e1 env in
        match eve1 with
        | VPtr(n) -> let block = Hashtbl.find mem n in
            (match block with
              |VClos (x,b,env2) ->
                let va = eval e2 env in
                eval b (Env.add x va env2)
              | _ -> assert false)
        | _ -> assert false
    

  (* Évaluation d'une expression dont la valeur est supposée entière *)
  and evali (e: expr) (env: value Env.t): int = 
    match eval e env with
    | VInt n -> n
    | _ -> assert false
  
  and evalb (e: expr) (env: value Env.t): bool = 
    match eval e env with
    | VBool n -> n
    | _ -> assert false
  in

  eval p.code Env.empty
