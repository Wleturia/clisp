(defvar listaf nil)
(defvar i 0)
(defun reversa (lista)
    (dotimes (i (length lista))
        (setf e (nth i lista))
        (setq listaf (cons e listaf))
    )
    (format t "~%Lista Reversa: ~a" listaf)
    (setf listaf nil)
)


(format t "Cuantos elementos tiene su lista?: ")
(defvar n (read))
(format t "~%Ingrese los elementos de la lista:~%")
(defvar lista nil)
(defvar e)
(dotimes (i n)
    (format t "Elemento de la lista:")
    (setq e (read))
    (setq lista (cons e lista))
)
(setf lista (reverse lista))
(format t "Lista: ~a~%" lista)
(reversa lista)
