;;; EJERCICIO 2 
;;; Definir una función que, dados una matriz, y una fila y una 
;;; columna de esa matriz, devuelva la matriz adjunta correspondiente; 
;;; es decir, la matriz resultante de eliminar esas fila y columna.
;;; Ejemplos: 
;(defvar *M* (make-array '(4 6) 
;   :initial-contents '((0 1 2 3 4 5)    
;                       (6 7 8 9 10 11)    
;                       (12 13 14 15 16 17)
;                       (18 19 20 21 22 23)))) 
; ==> *M* [#2A((0 1 2 3 4 5) (6 7 8 9 10 11) (12 13 14 15 16 17) (18 19 20 21 22 23))] (defvar *M* nil) 
; ==> *M* [#2A((0 1 2 3 4 5) (6 7 8 9 10 11) (12 13 14 15 16 17) (18 19 20 21 22 23))] (defparameter *M-adjunta* (crear-matriz-adjunta *M* 0 0)) 
; ==> *M-ADJUNTA* [#2A((7 8 9 10 11) (13 14 15 16 17) (19 20 21 22 23))] (defparameter *M-adjunta* (crear-matriz-adjunta *M* 2 2)) 
; ==> *M-ADJUNTA* [#2A((0 1 3 4 5) (6 7 9 10 11) (18 19 21 22 23))] 
;;; Fin de los ejemplos


(setq *print-case* :capitalize)

;(defparameter matriz (make-array 3))
;(setf (aref names 1) 'Bob)
;(format t "~a ~%" (aref names 1))

(format t "Bienvenido al programa ~%")
(format t "Numero de filas: ")
(defvar *li* (read))
(format t "Numero de columnas: ")
(defvar *co* (read))

(defun make-ar (*li* *co*)
    ;;DEFINE EL TAMAÑO DE LA VARIABLE
    (setf *matriz* (make-array (list *li* *co*)))
    ;;AGREGA VALORES A LA MATRIZ
    (dotimes (x *li*)
        (format t "~%")
        (dotimes (y *co*)
            (format t "Ingrese el valor ~a ~a de su arreglo : " (+ x 1) (+ y 1))
            (defvar *numero*)
            (setf *numero* (read))
            (setf (aref *matriz* x y) *numero*)
        )
    )
    ;;MUESTRA LA MATRIZ
    (format t "~%Esta es la matriz~%")
    (dotimes (x *li*)
        (format t "~%")
        (dotimes (y *co*)
            (format t "~d "(aref *matriz* x y))
        )
    )
    ;;RECOPILAR FILA
    (format t "~%~%Ingrese la FILA que desea borrar: ")
    (defvar *borrarfila* (read))
    ;;RECOPILAR COLUMNA
    (format t "Ingrese la COLUMNA que desea borrar: ")
    (defvar *borrarColumna* (read))
    ;;ELIMINAR FILA (ECHADITO)
    (dotimes (x *li*)
        (dotimes (y *co*)
            (setf (aref *matriz* *borrarfila* y) "")
        )
    )
    ;;ELIMINAR COLUMNA
    (dotimes (x *li*)
        (dotimes (y *co*)
            (setf (aref *matriz* x *borrarColumna*) "")
        )
    )
    ;;MOSTRAR NUEVA MATRIZ
    (format t "~%MATRIZ RESULTANTE")
    (format t "~%Esta es la matriz~%")
    (dotimes (x *li*)
        (format t "~%")
        (dotimes (y *co*)
            (format t "~d "(aref *matriz* x y))
        )
    )
)

(make-ar *li* *co*)