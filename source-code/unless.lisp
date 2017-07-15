(setq *print-case* :capitalize)

(defvar *age* 18)
(defvar *num-3* 5)

(defun get-school (age)
    (case age 
        (5 
            (print "Kindergarten")
        )
        (6
            (print "First Grade")
        )
        (otherwise
            (print "middle scool")
        )
    )
)

(get-school *age*) ; "middle scool"

(terpri)

;;;UNLESS
(unless (not(= *age* 18))
    (setf *num-3* 20)
    (format t "Something Random~%" *num-3*)
) ; Something Random

;;;