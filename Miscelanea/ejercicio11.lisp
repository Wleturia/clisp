;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 11) Definir la función (pertenece-prof x l), que comprueba la 
;;; pertenencia del elemento x a la lista genérica l.  Por ejemplo: 
;;; 
;;; > (pertenece-prof 5 '(0 (1 (2 (3 (4 5) 6) 7) 8) 9)) 
;;; T 
;;; > (pertenece-prof 'a '(0 (1 (2 (3 (4 5) 6) 7) 8) 9)) 
;;; NIL 
;;;************************************************************************

(setq *print-case* :capitalize)
(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(format t "Ingrese el miembro a buscar: ")
(defvar *miembro* (read))
;;(format t "Pertenece: ~d" (member *miembro* *lista*)) 
(defun deep-find (L n)
  (cond
   ((null L) nil)
   ((equal n (car L)) t)
   ((listp (car L))             ; in case of a branch,
    (or (deep-find (car L) n)   ; check the branch,
        (deep-find (cdr L) n))) ; and check rest of the list
   ((deep-find (cdr L) n))))
     
(format t "~d" (deep-find *lista* *miembro*))