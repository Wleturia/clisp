(defun filtar-tabla (tabla)
    (format t "~%Desea filtar ~%[1] Pares - [2] Impares:  ")
    (setf opc(read))
    (dotimes (a n)
        (case opc
            (1
                (maphash #'
                    (lambda (k v) 
                        (when (oddp v) 
                            (remhash k tabla)
                        )
                    ) tabla
                )
            )
            (2
                (maphash #'
                    (lambda (k v)  
                        (when (evenp v) 
                            (remhash k tabla)
                        )
                    ) tabla
                )
            )
        )
    )
    (format t "~%Filtrada:~%~a" tabla)
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
(filtar-tabla tabla)
