;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 7) Definir el predicado 
;;;         (igual-conjunto c1 c2) 
;;; que devuelva T si los conjuntos c1 y c2 son iguales y nil, si no lo 
;;; son.  Por ejemplo: 
;;; 
;;; > (igual-conjunto '(a b c) '(c a b)) 
;;; T 
;;; > (igual-conjunto '((a b) c) '(c (a b) c)) 
;;; T 
;;; > (igual-conjunto '((a b) c) '(a b c)) 
;;; NIL 
;;;************************************************************************

(setq *print-case* :capitalize)
(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(format t "Ingrese la segunda lista: ")
(defvar *lista-2* (read-from-string (concatenate 'string "(" (read-line) ")")))
(format t "Listas iguales (T) (Nil): ~d"(equal *lista* *lista-2*))
