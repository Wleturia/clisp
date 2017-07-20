;;; EJERCICIO 1 
;;; Un número entero positivo se dice que es perfecto si la suma de 
;;; sus divisores propios coincide con él mismo. Definir un predicado 
;;; que, dado un entero positivo, determine si es o no un número 
;;; perfecto. La función debe preguntar desde el teclado si se deben 
;;; escribir o no en pantalla los divisores propios del número y 
;;; actuar en consecuencia.
;;; Ejemplos: 
;;(número-perfecto-p 6)  ; => T (ya que 6 = 1 + 2 + 3) 
;;(número-perfecto-p 10) ; => NIL (ya que 10 /= 1 + 2 + 5) 
;;(número-perfecto-p 28) ; => T (ya que 28 = 1 + 2 + 4 + 7 + 14) 
;;; Fin de los ejemplos


(setq *print-case* :capitalize)
#||
(format t "Bienvenido al programa numero #1~%")
(format t "Un número entero positivo se dice que es perfecto si la suma de~%")
(format t "sus divisores propios coincide con él mismo. Definir un predicado~%")
(format t "que, dado un entero positivo, determine si es o no un número~%")
(format t "perfecto. La función debe preguntar desde el teclado si se deben~%")
(format t "escribir o no en pantalla los divisores propios del número y~%")
(format t "actuar en consecuencia.~%")
||#
(format t "Bienvenido al programa ~%")
(format t "Ingrese el numero entero ")
(defvar *numero* (read))
(format t "Desea escribir en pantalla los divisores propios del numero? (Y) (N)")
(defvar *desicion* (read))

(defun numero-perfecto-p(*numero* *desicion*)
    (if (equal *desicion* 'Y)
        (progn
            (defvar *numeroperfecto* 0)
            (format t "Se escogió MOSTRAR EN PANTALLA LOS DIVISORES ~%")
            (loop for x from 1 to (- *numero* 1)
                do
                (if (= (mod *numero* x) 0)
                    (progn
                        (print x)
                        (setq *numeroperfecto* (+ *numeroperfecto* x))
                    )
                )
            )
            (if (= *numero* *numeroperfecto*)
                    (progn
                        (format t "~%El numero: ~d" *numeroperfecto*)
                        (format t " es un numero perfecto")                    
                    )
                    (progn
                        (format t "~%El numero: ~d" *numeroperfecto*)
                        (format t " No es un numero perfecto")
                    )
            )
        )
        (progn
            (format t "Se escogió NO MOSTRAR EN PANTALLA LOS DIVISORES~%")
            (loop for x from 1 to (- *numero* 1)
                do
                (if (= (mod *numero* x) 0)
                    (progn
                        (setq *numeroperfecto* (+ *numeroperfecto* x))
                    )
                )
            )
            (if (= *numero* *numeroperfecto*)
                    (progn
                        (format t "~%El numero: ~d" *numeroperfecto*)
                        (format t " es un numero perfecto")                    
                    )
                    (progn
                        (format t "~%El numero: ~d" *numeroperfecto*)
                        (format t " No es un numero perfecto")
                    )
            )
        )
    )
)

(numero-perfecto-p *numero* *desicion*) 