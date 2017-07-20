;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 9) Definir la función 
;;;         (interseccion c1 c2) 
;;; que devuelva la intersección de los conjuntos c1 y c2 (i. e. la lista 
;;; de sus elementos comunes). Por ejemplo: 
;;; 
;;; > (interseccion '(a (c b) ((d))) '((c b) (a) ((d)))) 
;;; ((C B) ((D))) 
;;;************************************************************************

(setq *print-case* :capitalize)
(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(format t "Ingrese la segunda lista: ")
(defvar *lista-2* (read-from-string (concatenate 'string "(" (read-line) ")")))

(format t "La interseccion de las listas es: ~d~%"(intersection *lista* *lista-2*))
