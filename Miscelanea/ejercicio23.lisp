(defvar a nil)
(defvar lista nil)

(defun sustituye-uno (a b lista)
    (setf i 0)
    (loop   
        for xi in lista until (eq xi a)
        do
        (setf i (+ i 1))
    )
    (rplaca (nthcdr i lista) b)
    (format t "~%~a" lista)

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


(format t "~%Reemplazar elemento: ")
(defvar x (read))
(format t "por: ")
(defvar y (read))
(sustituye-uno x y lista)
