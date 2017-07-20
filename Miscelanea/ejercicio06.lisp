;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 6) Definir el predicado (subconjunto c1 c2) que devuelva t si c1 es un 
;;; subconjunto de c2 y nil e caso contrario. Por ejemplo, 
;;; 
;;; > (subconjunto nil '(a))             
;;; T 
;;; > (subconjunto '(a b) '(b a))      
;;; T 
;;; > (subconjunto '(a b) '((b) a))     
;;; NIL 
;;; > (subconjunto '((a b) c) '(c (b a) d)) 
;;; NIL
;;; > (subconjunto '((b a) c) '(c (b a) d))
;;; T ;;;************************************************************************


;;;FALTA MODIFICAR
(setq *print-case* :capitalize)
(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(format t "Ingrese el miembro a buscar: ")
(defvar *member* (read-from-string (concatenate 'string "(" (read-line) ")")))
(defun subconjunto (l1 l2)
(if (endp l1)
t
(and (member (first l1) l2)
(subconjunto (rest l1) l2))))

(format t "Miembro en la lista (T) (Nil): ~d"(subconjunto *member* *lista*)) 
