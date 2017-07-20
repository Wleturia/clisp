(setq *print-case* :capitalize)

(defun squares (num)
    (values (expt num 2) (expt num 3))
)

(multiple-value-bind (a b) (squares 2)
    (format t "2^2 = ~d 2^3 = ~d~%" a b) ; 2^2 = 4 2^3 = 8
)
