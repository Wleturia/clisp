;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 2) Escribir la función (cuadrados lst) que devuelva la lista de 
;;; cuadrados de la lista numérica lst. Por ejemplo: 
;;; 
;;; > (cuadrados '(1 2 3 4)) 
;;; (1 4 9 16) 
;;;************************************************************************
(setq *print-case* :capitalize)

(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(defun cuadrados (*lista*)
    (format t "Los cuadrados son: ")
    (dolist (num *lista*)
        (setf num (expt num 2))
        (format t "~d " num)
    )
)
(cuadrados *lista*) 
