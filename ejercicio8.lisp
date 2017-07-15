;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 8) Definir la función 
;;;         (m-union c1 c2) 
;;; que devuelva la unión de los conjuntos c1 y c2 (i.e. una lista sin 
;;; elementos repetidos que contenga los elementos que están en c1 o en 
;;; c2). Por ejemplo: 
;;; 
;;; > (m-union nil '(a b))                
;;; (A B) 
;;; > (m-union '(a (c b) e) '((c b) a d))  
;;; (E (C B) A D) 
;;;************************************************************************

(setq *print-case* :capitalize)
(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(format t "Ingrese la segunda lista: ")
(defvar *lista-2* (read-from-string (concatenate 'string "(" (read-line) ")")))

(format t "La union de las listas es: ~d~%"(union *lista* *lista-2*))