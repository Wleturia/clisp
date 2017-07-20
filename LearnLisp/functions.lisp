(setq *print-case* :capitalize)

(defun hello()
    (print "Hello")
    (terpri)
)

(hello) ; "Hello"

;;;

(defun get-avg(num-1 num-2)
    (/ (+ num-1 num-2) 2)
)

(format t "Avg 10 & 50 = ~a ~%" (get-Avg 10 50)) ; Avg 10 & 50 = 30


;;;OPTIONAL
(defun print-list (w x &optional y z)
    (format t "List = ~a ~%" (list w x y z))
)

(print-list 1 2 3) ; List = (1 2 3 Nil)

;;;RECEIVE MULTIPLE VALUES
(defvar *total* 0)

(defun sum (&rest nums)
    (dolist (num nums)
        (setf *total* (+ *total* num))
    )
    (format t "Sum = ~a ~%" *total*)
)

(sum 1 2 3 4 5 6 7) ; Sum = 28

;;;KEY

(defun print-list(&optional &key x y z)
    (format t "List: ~a ~%" (list x y z))
)

(print-list :x 1 :y 2) ; List: (1 2 Nil)

;;;RETURN-FROM
(defun difference (num1 num2)
    (return-from difference(- num1 num2))
)

(format t "10 - 2 = ~a ~%" (difference 10 2))

;;;Quasi Quoting

(defparameter *hero-size*
    '((Superman (6 ft 3 in) (230 lbs))
    (Flash (6 ft 0 in) (190 lbs))
    (Batman (6 ft 2 in) (210 lbs))))

(defun get-hero-data (size)
    (format t "~a ~%"
    `(,(caar size) is ,(cadar size) and ,(cddar size)))
)

(get-hero-data *hero-size*) ; (Superman Is (6 Ft 3 In) And ((230 Lbs)))


;;; MAPCAR
(format t "A number ~a ~%" (mapcar #'numberp '(1 2 3 f g))) ; A number (T T T Nil Nil)

;;;
;(flet ((func-name (arguments)
;    function Body ))
;    body)

(flet ((double-it (num)
    (* num 2))
    (triple-it (num))
    (* num 3))
)
(format t "Double & riple 10 = ~d ~%" (triple-it(double-it 10)))

(labels ((double-it (num)
    (* num 2))
    (triple-it (num)
        (* (double-it num) 3)))
        (format t "Double & Triple 2 = ~d ~%" (triple-it 3)))
