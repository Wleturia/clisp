(format t "Ejercicio 9~%Ingresar en orden~%~%")

(format t "Numero:")
(defvar x (read))

(format t "Cuantos elementos tiene su lista?: ")
(defvar n (read))
(format t "~%Ingrese los numeros de la lista:~%")
(defvar lista nil)
(defvar e)
(dotimes (i n)
    (format t "Numero de la lista:")
    (setq e (read))
    (setq lista (cons e lista))
)
(setq y (sort lista #'<))
(format t "Lista: ~a ~%" y)

(setq resultado (sort (cons x y) #'<))
(format t "Resultado: ~a ~%" resultado)

(defun insertar-en-orden1(x y)
    (setq resultado (sort (cons x y) #'<))
    (format t "Resultado: ~a ~%" resultado)

)
