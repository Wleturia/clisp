;;;EJERCICIO3
;;;Definir una funcion que, dados los coeficientes de una ecuacion de
;;;segundo grado, devuelva el numero de soluciones reales distintas
;;;que posee la ecuacion
;;;Ejemplos:
;(contar-soluciones-ecuación 1-3 2)====>2
;(contar-soluciones-ecuación 1 -2 1)====>1
;(contar-soluciones-ecuación 1 1 1 )====>0
(format t "Bienvenido a Programa ~%")
(format t "Defina una funcion que dado los coeficientes de segurdo grado , devuelva el numero de soluciones reales ~%")
(format t "ingrese a:")
(defvar *a*(read))
(format t "ingrese b:")
(defvar *b*(read))
(format t "inhgrese c :")
(defvar *c*(read))

(defun contar-soluciones-ecuación(*a* *b* *c*)
(defvar *discriminante* (- (expt *b* 2) (* 4 (* *a* *c*))))
(format t "número de soluciones ~d ~%" *discriminante* )

(if (< *discriminante* 0)
(setf *discriminante* 3)
(setf *discriminante* 2))

(case *discriminante*
        (0 (print "1"))
        (2 (print "2"))
        (3 (print "0"))        
)
)

(contar-soluciones-ecuación *a* *b* *c*)
