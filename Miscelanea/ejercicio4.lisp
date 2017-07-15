;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 4) Definir la función (ultimo lst) que devuelva el último elemento de 
;;; la lista lst. Supondremos que la lista de entrada nunca será vacía. 
;;; 
;;; Ejemplo de uso: 
;;; > (ultimo '(1 2 3 4)) 
;;; 4 
;;;************************************************************************
(setq *print-case* :capitalize)


(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(defun ultimo-elemento (list &optional (n 1))
   (check-type n (integer 0))
   (do ((l list (cdr l))
        (r list)
        (i 0 (+ i 1)))
       ((atom l) r)
     (if (>= i n) (pop r))))

(format t "El ultimo elemento de la lista es: ~d"(ultimo-elemento *lista*))