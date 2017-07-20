(defvar f2)
(defvar f1)
(defvar f0)

(defun fibo (x)
    (setf f0 1)
    (setf f1 1)
    (setf f2 2)
    (case x 
        (0
            (setf f2 f0)
        )
        (1
            (setf f2 f1)
        )
        (2
            (setf f2 (+ f0 f1))
        )
        (otherwise
            (dotimes (m (- x 3))
                (setf f0 f1)
                (setf f1 f2)
                (setf f2 (+ f1 f0))
            )
        )
    )
    (format t "~%f(~a) = " x)
    (format t "~a" f2)
)

(format t "~%FIBONACCI~%")
(format t "La variable x de la funcion fibonnaci:  ")
(defvar x (read))
(fibo x )
