(defvar s 0)
(defvar var 0)
(defun sumar (lista)
    (setf var 0)
    (setf s 0)
    (loop 
        for xi in lista until (not (numberp xi))
        do
        (setf var (+ var 1))
        (setf s (+ s xi))
    )    
    (if (= var (length lista))
        (format t "~%Sumatoria de los Elementos de la Lista = ~a" s)
        (print "La lista debe contener numeros.")
    )
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

(sumar lista)
