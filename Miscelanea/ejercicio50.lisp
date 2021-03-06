(defun tiene-valor? (key tabla)
    (setf var (gethash key tabla))
    (print key)
    (print var)
    (if (eq var nil)
        (format t "~%La Llave ~a no tiene valor.")
        (format t "~%El valor de la llave ~a es : ~a" key var)
    )
)

(defun hashtable()
    (format t "~%Cuantos valores desea agregar a la Tabla?: ")
    (setf n (read))
    (defparameter tabla (make-hash-table))
    (format t "~%Elementos de la tabla: ~%")
    (dotimes (a n)
        (format t "~%Llave: ")
        (setf key (read))
        (format t "Valor: ")
        (setf val (read))
        (setf (gethash key copia) val)
        (setf (gethash key tabla) val)
    )
    (format t "~%~a" tabla)
)


(hashtable )
(format t "~%Que llave desea buscar?: ")
(setf key (read))
(tiene-valor? key tabla)
