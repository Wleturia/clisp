;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 3) Escribir el predicado (suma-lista lst) que devuelva la suma de los 
;;; elementos de la lista numérica lst. Por ejemplo: 
;;; 
;;; > (suma-lista '(1 2 3 4)) 
;;; 10 
;;;************************************************************************
(setq *print-case* :capitalize)

(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(defun suma (*lista*)
    (defvar *suma* 0)
    (dolist (num *lista*)
        (setf *suma* (+ *suma* num))
    )
    (format t "La suma de los elementos de la lista es: ~d" *suma*)  
)
(suma *lista*)
