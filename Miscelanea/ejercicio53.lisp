(defparameter agenda (make-hash-table))
(defvar grupos (list 'amigos 'familia 'clientes 'trabajo 'otros))

(defun agregar-grupo()
    (format t "~%Nombre del grupo que desea crear: ")
    (setf gru (read))
    (setf grupos (cons gru grupos))
    (format t "Grupos: ~a" grupos)
)

(defun imprimir-agenda(gru)
    (if (eq gru nil)
        (maphash #'(lambda (k v) (print (list k v))) agenda)
        (maphash #'(lambda (k v) (when (eq (nth 1 v) gru) (print (list k v)) )) agenda)
    )
)

(defun agregar-numero()
        (format t "~%Nombre: ")
        (setf nom(read))
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
        (setf info (list num gru))
        (setf (gethash nom agenda) info)
)

(defun eliminar-numero()
        (loop
            do
            (format t "~%Ingrese el nombre de la persona que desea Eliminar.")
            (format t "~%Nombre: ")
            (setf nom(read))
            while (eq (gethash nom agenda) nil)
        )
        (remhash nom agenda)
)

(defun actualizar-numero()
        (loop
            do
            (format t "~%Ingrese el nombre de la Persona a la cual desea Actualizar sus Datos: ")
            (format t "~%Nombre: ")
            (setf nom(read))
            while (eq (gethash nom agenda) nil)
        )
        (setf info (gethash nom agenda))
        (remhash nom agenda)
        (format t "~%[1] Nombre - [2] Numero - [3] Grupo.~%Cual dato desea actualizar?: ")
        (setf opc (read))
        (case opc
            (1
                (format t "~%Nombre: ")
                (setf nom(read))
                (setf (gethash nom agenda) info)
            )
            (2
                (loop
                do
                (format t "~%Numero: ")
                (setf num(read))
                while (or (< num 100000000) (> num 999999999))
                )
                (setf info (list num (nth 1 info)))
                (setf (gethash nom agenda) info)
            )
            (3
                (loop
                do
                (format t "Lista de Grupos: ~a" grupos)
                (format t "~%Grupo: ")
                (setf gru(read))
                while (or (< num 100000000) (> num 999999999))
                )
                (setf info (list (nth 0 info) gru))
                (setf (gethash nom agenda) info)
            )
        )
    (format t "~%~a" (gethash nom agenda))
)


(loop
    do
    (format t "~%~%[1] Agregar numeros a su agenda.~%[2] Modificar numeros de su agenda.~%[3] Eliminar numeros de su agenda.~%[4] Crear un Grupo.~%[5] Imprimir Agenda.~%[6] Imprimir Agenda de un Grupo~%[7] Salir.")
    (format t "~%Que opcion desea realizar?: ")
    (setf opc (read))
    (case opc
        (1
            (agregar-numero)
        )
        (2
            (actualizar-numero)
        )
        (3
            (eliminar-numero)
        )
        (4
            (agregar-grupo)

        )
        (5
            (imprimir-agenda nil)
        )
        (6
            (format t "~%~%Lista de Grupos: ~a" grupos)
            (format t "~%Los numero de que grupo desea Imprimir?: ")
            (setf gru (read))
            (imprimir-agenda gru)
        )
        (7)
    )
    while(not(= opc 7))
)
