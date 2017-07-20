;;; EJERCICIO 2
;;; Definir una función que, dados un número real y, opcionalmente, un
;;; número de cifras decimales con valor por defecto 0, redondee el número
;;; real a ese número de cifras decimales.
;;; Ejemplos:
; (redondear 3.14159265) ==> 3.0
; (redondear 3.14159265 4) ==> 3.1416
(setq *print-case* :capitalize)
(format t "Bienvenido a Programa ~%")
(format t "Definir una funcion que dados un numero real y opcionalmente un numero de cifras decimales con valor por defecto 0 redondee el número real a ese numero de cifras decimales~%")

(format t "Ingrese el numero real ")
(defvar *real* (read))
(format t "Desea ingresar algun valor de redondeo? (Y) (N)")
(defvar *desicion* (read))

(defun redondear(*real* &optional *redondeo*)
    (defvar exp (expt 10 *redondeo*))
    (defvar *op* (* *real* exp))
    (defvar *op-round* (fround *op* 1))
    (defvar *result* (/ *op-round* exp))
    (format t "REDONDEO : ~d " *result*)
)

(case *desicion*
        (N 
            (format t "No se escogió un valor de redondeo ~%")
            (redondear *real* 0)
            ;;(redondear *real*)
        )
        (Y 
            (format t "Se escogió un valor de redondeo ~%")
            (format t "Ingrese valor de redondeo: ")
            (defvar *redondeo* (read))
            (redondear *real* *redondeo*)            
        )
        (otherwise (print "Ingresó un valor inválido")))