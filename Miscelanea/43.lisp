(defun subconjunto (a b)
    (format t "~%El conjunto ~a es un subconjunto de " a)
    (format t "~a ?" b)
    (setf var 1)
    (loop 
        for x1 in a
        do
        (setf cont 0)
        (loop
            for x2 in b until (eq x1 x2)
            do
            (setf cont (+ cont 1))
        )
        (if (= cont (length b))
            (setf var 0)
        )
    )  
    (if (= var 0)
        (format t "~%NO")
        (format t "~%SI")
    )
)

(format t "Cuantos elementos tiene la primera lista?: ")
(setf n (read))
(format t "~%Ingrese los elementos de la lista:~%")
(defvar lista1 nil)
(dotimes (i n)
    (format t "Elemento de la lista:")
    (setq e (read))
    (setq lista1 (cons e lista1))
)
(setf lista1 (reverse lista1))

(format t "~%Cuantos elementos tiene la segunda lista?: ")
(setf n (read))
(format t "~%Ingrese los elementos de la lista:~%")
(defvar lista2 nil)
(dotimes (i n)
    (format t "Elemento de la lista:")
    (setq e (read))
    (setq lista2 (cons e lista2))
)
(setf lista2 (reverse lista2))

(format t "~%Lista Subconjunto: ~a" lista1)
(format t "~%Lista Total: ~a" lista2)

(subconjunto lista1 lista2)
