(defvar listi)
(defvar listaf nil)

(defun aplana (lista)
    (format t "Lista: ~a" lista)
    (aplanalista lista)
    (setf listaf (reverse listaf))
    (format t "~%Resultado: ~a" listaf)
    (setf listaf nil)
)

(defun aplanalista (lista)
    (loop
        for xi in lista
        do
        (if (listp xi)
            (aplanalista xi)
            (setf listaf (cons xi listaf))
        )
    )
)

(setf ejemplo '(a (b (a (c (a a) b) d) a) f))
(aplana ejemplo)