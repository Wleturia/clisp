;;; EJERCICIO 3
;;; Las notas obtenidas a lo largo de un cuatrimestre por los alumnos
;;; de una asignatura de una titulación universitaria se guardan en
;;; una tabla hash en la que cada una de las entradas tiene por clave
;;; el nombre de uno de los alumnos y por valor una lista con las
;;; notas obtenidas por ese alumno.
;;; Definir una función que, dados una tabla hash del tipo anterior y
;;; la operación a realizar con las notas para calcular la nota final
;;; (como argumento clave y con valor por defecto la suma), devuelva
;;; una nueva tabla hash en la que cada una de las entradas tenga por
;;; clave el nombre de uno de los alumnos y por valor la nota final
;;; obtenida por el alumno (0 si no tiene ninguna nota).
;;; Ejemplos:
;;; Fin de los ejemplos

(setq *print-case* :capitalize)

(defstruct alumno name promedio notas)

;(defvar *nombreAlumno* Maria)
(setq Maria (make-alumno
    :name "Maria"
    :promedio nil
    :notas '(1 2 3 4 5)))

(format t "~a ~%" (alumno-name Maria))
(format t "~a ~%" (alumno-promedio Maria))
(defvar *notas* (alumno-notas Maria))
(format t "~d " *notas*)
(format t "~d " (list-length *notas*))



;(setf (alumno-address paulsmith) "125 main")
;
;(write paulsmith)
;
;(setq sally-smith-1001(make-alumno
;    :name "Sally Smith"
;    :address "126 Main"
;    :id 1001))