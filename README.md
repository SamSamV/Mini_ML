# Mini_ML : Eytan Levy && Sam Vallet

Voici notre interprete pour des fragments d'ocaml, combinant analyse syntaxique, verification de types et evaluation d'expressions.
Le projet se décompose en 3 sujets distincts:
    1) Analyse syntaxique
    2) type_checker
    3) interpreter

## I) Organisation du groupe, et guideline

Pour faire evoluer le projet le plus loin possible, le travail a été décomposé en 2 grandes parties:
    - analyse syntaxique ( parser et lexer)
    - le reste :) (type_checker et interpreter)
Pour ne pas nous emmeler les pinceaux, nous avons decidé de ne pas mélanger les deux.
C'est pourquoi la partie analyse syntaxique est plus avancée que la partie type et interpretation.
Concernant a division du temps de travail, d'un commun accord, nous avons partagé le projet de la maniere suivante:
Tout d'abord, Eytan a pris en main le projet, en implementant les premieres expressions (binop, let, let rec, if, fun) et en complétant le lexer.
Ensuite, Sam a terminé les taches plus difficiles (typedef, struct ...)
Par la suite, nous avons travaillé en parallele sur la deuxieme partie du projet, et nous sommes partagés les differentes implementations.

## II) Resultats

Nous avons obtenu des resultats assez satisfaisants, mais nous restons sur notre fin.
    - Concernant l'analyse syntaxique:
    La plupart des tests avec mmlcat.ml fonctionnent. Cependant, nous n'avons pas reussi a implementer parfaitement les structures et la definition de types.
    En effet, le parser prend bien en compte la definition en haut du fichier, mais nous n'avons pas reussi a les associer a leur utilisation au sein meme des fonctions.
    Alors, le fichier syracuse.mml, ou encore strct.mml, indiquent une erreur.
    Concernant les autres tests que nous avons fait, un détail choquant est aussi notre gestion des fonctions recursives avec l'expression Fix, qui s'affiche contre notre gré dans le fichier de retour. (vous le verrez avec fact.mml ou somme.mml)
    Enfin, nous n'avons pas reussi a regler tous les conflits shift/reduce indiqués lors de la compilation.
    - Concernant l'interpretation et le typage:
    L'implementation de cette partie fut la plus tumultueuse, par sa difficulté plus elevee. Notre travail s'arrete à l'implementation de l'interpretation de fonctions recursives, toujours non résolue. Vous trouverez dans le fichier interpreter, pour l'expression "Fix", une evaluation qui compile mais n'affiche pas de valeur, et juste en dessous en commentaire une trace de notre recherche.

Merci d'avance pour la correction, et espérons que notre travail vous interessera.
Ocaml à vous,
Eytan et Sam
