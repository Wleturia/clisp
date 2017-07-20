(defvar listaf nil)

(defun concatenar (lista1 lista2)
    (setf listaf nil)
    (loop 
        for xi in lista1
        do
        (setf listaf (cons xi listaf))
    )
    (loop 
        for xi in lista2
        do
        (setf listaf (cons xi listaf))
    )
    (setf listaf (reverse listaf))
    (format t "~%Lista Resultante: ~a" listaf)
)

(format t "Cuantos elementos tiene su primera lista?: ")
(setf n (read))
(format t "~%Ingrese los elementos de la lista:~%")
(defvar lista1 nil)
(dotimes (i n)
    (format t "Elemento de la lista:")
    (setq e (read))
    (setq lista1 (cons e lista1))
)
(setf lista1 (reverse lista1))

(format t "~%~%Cuantos elementos tiene su segunda lista?: ")
(setf n (read))
(format t "~%Ingrese los elementos de la lista:~%")
(defvar lista2 nil)
(dotimes (i n)
    (format t "Elemento de la lista:")
    (setq e (read))
    (setq lista2 (cons e lista2))
)
(setf lista2 (reverse lista2))


(format t "~%Lista 1: ~a" lista1)
(format t "~%Lista 2: ~a" lista2)
(concatenar lista1 lista2)
