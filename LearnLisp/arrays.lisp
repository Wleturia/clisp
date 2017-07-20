(setq *print-case* :capitalize)

(defparameter names (make-array 3))

(setf (aref names 1) 'Bob)

(format t "~a ~%" (aref names 1))

(setf num-array (make-array '(3 3)
    :initial-contents '((0 1 2) (3 4 5) (6 7 8))
))

(dotimes (x 3)
    (dotimes (y 3)
        (print (aref num-array x y))
    )
)

(setf array (make-array '(3 3)
    :initial-contents '((" " 1 2) (3 4 5) (6 7 8))

))
;;(setf (apply #'aref array posicion) valor)
;;cambiar valor de un array
(dotimes (x 3)
    (format t "~%_____________~%|")
    (dotimes (y 3)
        (format t " ~a |" (aref array x y))
    )
)