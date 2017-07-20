
(format t "Bienvenido a Programa ~%")
(format t "Definir una función que, dado un número entero no negativo n,
 devuelva el n-ésimo término de la sucesión de Fibonacci.%")
(format t "Ingrese numero entero positivo ")
(defvar *n*(read))

(defun CALCULAR-TERMINOS-FIB(n)
 (cond ((= n 0) 0)
        ((= n 1) 1)
        ((> n 1) (+ (CALCULAR-TERMINOS-FIB(- n 1))
                    (CALCULAR-TERMINOS-FIB(- n 2))))))


(setq *print-case* :capitalize)
(CALCULAR-TERMINOS-FIB *n*)









