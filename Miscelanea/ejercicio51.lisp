(defparameter agenda (make-hash-table))
(defvar grupos (list 'amigos 'familia 'clientes 'trabajo 'otros))

(defun agregar-grupo()
    (format t "~%Nombre del grupo que desea crear: ")
    (setf gru (read))
    (setf grupos (cons gru grupos))
    (format t "Grupos: ~a" grupos)
)

(defun imprimir-agenda()
    (maphash #'(lambda (k v) (print (list k v))) agenda)
)

(defun agregar-agenda()
    (format t "~%Cuantos numeros desea agregar a su Agenda?: ")
    (setf n (read))
    (format t "~%Numeros de la Agenda: ~%")
    (dotimes (a n)
        (loop
            do
            (format t "~%Numero: ")
            (setf num(read))
            while (or (< num 100000000) (> num 999999999))
        )
        (loop
            do
            (format t "Lista de Grupos: ~a" grupos)
            (format t "~%Grupo: ")
            (setf gru (read))
            while (not (member gru grupos))
        )
        (setf (gethash num agenda) gru)
    )
)


(loop
    do
    (format t "~%~%[1] Agregar numeros a su agenda.~%[2] Crear un Grupo.~%[3] Imprimir Agenda.~%[4] Salir.")
    (format t "~%Que opcion desea realizar?: ")
    (setf opc (read))
    (case opc
        (1
            (agregar-agenda)
        )
        (2
            (agregar-grupo)
        )
        (3
            (imprimir-agenda)
        )
        (4)
    )
    while(not(= opc 4))
)
