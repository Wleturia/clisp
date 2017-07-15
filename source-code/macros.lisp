(setq *print-case* :capitalize)
;; https://stackoverflow.com/questions/267862/what-makes-lisp-macros-so-special
(defvar *num* 2)
(defvar *num-2* 0)

(if (= *num* 2)
    (progn 
        (setf *num-2* 2)
        (format t "*num-2* = ~d ~%" *num-2*)
    )
    (format t "Not equal to 2 ~%")
)

(defmacro ifit (condition &rest body)
    `(if, condition (progn ,@body) (format t "Can't Drive ~%")
    ))

(setf *age* 16)

(ifit (>= *age* 16)
    (print "You are over 16")
    (print "Time to drive")
    (terpri)
    
)

;;
(defun add (num1 num2)
    (let ((sum (+ num1 num2)))
        (format t "~a + ~a = ~a ~%" num1 num2 num3))
)

(defmacro letx (var val &rest body)
    `(let ((,var ,val)) ,@body)
)

(defun subtract (num1 num2)
    (letx dif (- num1 num2)
        (format t "~a - ~a = ~a ~%" num1 num2 dif))
)

(subtract 10 6)

