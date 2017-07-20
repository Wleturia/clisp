(defvar longitud 0)
(defun longitud (lista)
    (loop
        for xi in lista
        do
        (setf longitud (+ longitud 1))
    )
    (format t "~%Lista: ~a" lista)
    (format t "~%Longitud de la lista: ~a" longitud)
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
(longitud lista)
