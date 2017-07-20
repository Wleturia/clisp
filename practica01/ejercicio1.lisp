;;; EJERCICIO 1
;;; Definir una función que, dados la base y la altura de un
;;; triángulo, calcule su área.
;;; Ejemplos:
; (área-triángulo 3 3) ==> 9/2
; (área-triángulo 1.4 5.8) ==> 4.06
(format t "Bienvenido a Programa ~%")
(format t "Definir una funcion que dados la base y la altura de un triangulo calcule su area ~%")
(format t "Ingrese la base ")
(defvar *base*(read))
(format t "Ingrese la altura ")
(defvar *altura*(read))

(defun area-triangulo(*base* *altura*)
    (format t "Area del triangulo ~d ~%" (/ (* *base* *altura*) 2.0))
)

(setq *print-case* :capitalize)
(area-triangulo *base* *altura*)
