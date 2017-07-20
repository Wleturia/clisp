(defun copia-tabla(tabla)
    (loop
        do
        (format t "~%Desea modificar algun elemento?:~%[1] SI - [2] NO : ")
        (setf opc (read))
        (case opc
            (1
                (loop
                    do
                    (format t "Llave: ")
                    (setf key (read))
                    (setf var (gethash key tabla))
                    while (eq var nil)
                )
                (format t "Nuevo valor de la llave ~a : " key)
                (setf var (read))
                (setf (gethash key copia) var)
            )
            (2)
        )
        while (not(= opc 2))
    )
    (format t "~%Original - HashTable:~%~a" tabla)
    (format t "~%Copia - HashTable:~%~a" copia)
)

(defun hashtable()
    (format t "~%Cuantos valores desea agregar a la Tabla?: ")
    (setf n (read))
    (defparameter tabla (make-hash-table))
    (defparameter copia (make-hash-table))
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
(copia-tabla tabla)
