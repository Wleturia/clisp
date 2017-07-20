(defvar listi)
(defvar n 1)

(defun ocurrencias-prof (lista)
    (format t "Lista: ~a" lista)
    (cuenta lista)
    (format t "~%La lista cuenta con ~a ocurrencias" n)
    (setf n 0)
)

(defun cuenta (lista)
    (loop
        for xi in lista
        do
        (when (listp xi)
            (cuenta xi)
            (setf n (+ n 1))
        )
    )
)

(setf ejemplo '(a (b (a (c (a a) b) d) a) f))
(ocurrencias-prof ejemplo)