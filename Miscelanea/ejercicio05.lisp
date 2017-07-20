;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 5) Definir la función (pertenece e c) que se verifique si la expresión 
;;; e pertenece al conjunto c y devuelva la parte de C que comienza en la 
;;; primera aparición de E. Por ejemplo: 
;;; 
;;; > (pertenece 'b '(a b c))           
;;; (B C) 
;;; > (pertenece 'b '(a (b) c))         
;;; NIL 
;;; > (pertenece '(b) '(a (b) c))        
;;; ((B) C) 
;;;************************************************************************

(setq *print-case* :capitalize)

(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(format t "Ingrese el miembro a buscar: ")
(defvar *member* (read))

(format t "Pertenece: ~d" (member *member* *lista*)) 
