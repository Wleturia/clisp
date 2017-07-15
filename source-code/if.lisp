(setq *print-case* :capitalize)

;;; OPERATORS < > >= <= =
(defvar *age* 18)

(if (= *age* 18)
    (format t "You can vote~%")
    (format t "You can't vote~%")    
) ; You can vote

;; LOGICAL OPERATORS and, or, not

(if (and (<= *age* 14) (>= *age* 67))
    (format t "Work if you want ~%")
    (format t "Time for work ~%")
) ; Time for work

(if (or (<= *age* 14) (>= *age* 67))
    (format t "Work if you want ~%")
    (format t "Time for work ~%")
) ; Time for work


;;COMPLEX
(defvar *num* 2)
(defvar *num-2* 2)
(defvar *num-3* 2)

(if (= *num* 2)
    (progn
        (setf *num-2* (* *num-2* 2))
        (setf *num-3* (* *num-2* 3))          
    )
    (progn
        (format t "Not equal to 2 ~%")
    )
)

(format t "*num-2* = ~d ~%" *num-2*) ; *num-2* = 4
(format t "*num-3* = ~d ~%" *num-3*) ; *num-3* = 12