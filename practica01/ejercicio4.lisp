;;; EJERCICIO 4
;;; Un año es bisiesto si es divisible por 4 y no lo es por 100, a
;;; menos que lo sea por 400.
;;; Definir un predicado que determine, dado un año, si es o no
;;; bisiesto.
;;; Ejemplos:
; (año-bisiesto-p 2001) ==> NIL
; (año-bisiesto-p 2004) ==> T
; (año-bisiesto-p 2100) ==> NIL
; (año-bisiesto-p 2000) ==> T

(format t "Bienvenido a Programa ~%")
(format t "Ingrese el año ")
(defvar *ano*(read))

(defun ano-bisiesto-p (*ano*)
    (if (= (mod *ano* 4) 0)
        (if (or (not (= (mod *ano* 100) 0)) (= (mod *ano* 400) 0))
            (format t "Es bisiesto")
            (format t "No Es bisiesto")        
        )
        (format t "No Es bisiesto")        
    )
)

(setq *print-case* :capitalize)
(ano-bisiesto-p *ano*)