(defvar a nil)
(defvar lista nil)

(defun elimina (a lista)
    (loop   
        for i from 0
        for xi in lista
        do
        (when (eq xi a)
            (setf izq (subseq lista 0 i))
            (setf der (subseq lista (+ i 1) (length lista)))
            (setf lista (append izq der))
            (setf i (- i 1))
        )
    )
    (format t "~%Resultado: ~a" lista)
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


(print lista)
(format t "~%Elemento que desea eliminar: ")
(defvar x (read))
(elimina x lista)
