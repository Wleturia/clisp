(defun mezcla (l1 l2)
    (setf listf (sort (append l1 l2) #'<))
    (format t "~%~%Lista Final: ~a" listf)
)


(defvar n)
(format t "Cuantos elementos tiene la primera lista?: ")
(setf n (read))
(format t "~%Ingrese los elementos de la lista:~%")
(defvar lista1 nil)
(dotimes (i n)
    (format t "Elemento de la lista:")
    (setf e (read))
    (setf lista1 (cons e lista1))
)
(setf lista1 (sort lista1 #'<))
(format t "Lista 1: ~a~%" lista1)

(format t "Cuantos elementos tiene la segunda lista?: ")
(setf n (read))
(format t "~%Ingrese los elementos de la lista:~%")
(defvar lista2 nil)
(dotimes (i n)
    (format t "Elemento de la lista:")
    (setf e (read))
    (setf lista2 (cons e lista2))
)
(setf lista2 (sort lista2 #'<))
(format t "Lista 2: ~a" lista2)

(mezcla lista1 lista2)