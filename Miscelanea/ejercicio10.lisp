;;;AUTHOR: Walter Leturia

;;;************************************************************************
;;; 10) En este ejercicio vamos a "comprimir" y "descomprimir" listas. 
;;; 
;;; Apartado (a). 
;;; Definir la función (compresion lst) que devuelva la lista lst 
;;; comprimida en el siguiente sentido: 
;;; * Si el elemento x aparece n (n > 1) veces de manera consecutiva en l 
;;;   sustituimos esas n ocurrencias por la lista (n x) 
;;; * Si el elemento x es distinto de sus vecinos, entonces lo dejamos 
;;;   igual 
;;; Ejemplo: 
;;; 
;;; > (compresion '(1 1 1 2 1 3 2 4 4 6 8 8 8)) 
;;; ((3 1) 2 1 3 2 (2 4) 6 (3 8)) 
;;; > (compresion '(a a a b a c b d d f h h h)) 
;;; ((3 a) b a c b (2 d) f (3 h)) 
;;; 
;;; Apartado (b). 
;;; Definir la función (descompresion lst) que devuelva la lista lst 
;;; descomprimida si se ha comprimido con el método del apartado anterior. 
;;; Ejemplo: 
;;; 
;;; > (descompresion '((3 1) 2 1 3 2 (2 4) 6 (3 8))) 
;;; (1 1 1 2 1 3 2 4 4 6 8 8 8) 
;;;************************************************************************

(setq *print-case* :capitalize)
(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(format t "Desea comprimir o descomprimir (C) (D): ")
(defvar *opcion* (read))
    (defun compress (l1)		       
    (cond ((null (cdr l1)) '())
        (t (accum (car l1) 1 (cdr l1)))))

    (defun accum (val acc lst)
    (cond ((null lst) (cons (comp-list val acc) nil))
        ((eq val (car lst)) (accum val (1+ acc) (cdr lst)))
        (t (cons (comp-list val acc) (accum (car lst) 1 (cdr lst))))))

    (defun comp-list (val acc)
    (if (> acc 1) (list acc val) val))

    (defun decompress (lst)
    (cond  ((null lst) nil)
        ((atom (car lst)) (cons (car lst) (decompress (cdr lst))))
        ((consp (car lst)) (append (deep-decompress (car lst)) (decompress (cdr lst))) 
        )))

    (defun deep-decompress (lst)
    (if (zerop (car lst)) nil 
        (cons (second lst) (deep-decompress (list (1- (car lst)) (second lst))))))

(case *opcion*
        (C 
            (format t "Lista comprimida: ~a" (compress *lista*))                   
        )
        (D
            (format t "Lista descomprimida: ~a" (decompress *lista*))
        )
        (otherwise (print "Ingresó un valor inválido")))