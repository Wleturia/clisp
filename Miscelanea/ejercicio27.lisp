(defvar listi)
(defvar n 0)

(defun tamaño (lista)
    (format t "Lista: ~a" lista)
    (cuenta lista)
    (format t "~%La lista cuenta con ~a elementos" n)
    (setf n 0)
)

(defun cuenta (lista)
    (loop
        for xi in lista
        do
        (if (listp xi)
            (cuenta xi)
            (setf n (+ n 1))
        )
    )
)

(setf ejemplo '(a (b (a (c (a a) b) d) a) f))
(tamaño ejemplo)
