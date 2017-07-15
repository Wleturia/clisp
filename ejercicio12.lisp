;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 12) Definir la función (ocurrencias-prof x l), que cuenta el número de 
;;; ocurrencias del elemento x en la lista genérica l. Por ejemplo: 
;;; 
;;; > (ocurrencias-prof 'a '(a (b (a (c (a a) b) d) a) f)) 
;;; 5 
;;;************************************************************************

(setq *print-case* :capitalize)
(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(format t "Ingrese el miembro a buscar: ")
(defvar *miembro* (read))

;(defun pos+ (lst)
;  - initialize a value count to 0
;  - get lst length (len)
;  - while count < len
;    -  add car of lst to count
;    -  add 1 to count
;  - call function again (recurse) with cdr lst

(defun length (lst)
        (cond ((null lst) 0)
            (t (+ 1 (length (rest lst))))))

(defun deep-find (L n)

  (cond
   ((null L) nil)
   ((equal n (car L)) t)
   ((listp (car L))             ; in case of a branch,
    (or (deep-find (car L) n)   ; check the branch,
        (deep-find (cdr L) n))) ; and check rest of the list
   ((deep-find (cdr L) n))))

(format t "~d")