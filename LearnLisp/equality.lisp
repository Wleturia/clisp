(setq *print-case* :capitalize)

(defparameter *name* 'Derek)

(format t "(eq *name 'Derek) = ~d ~%" (eq *name* 'Derek)) ; (eq *name 'Derek) = T


(format t "(equal 'car 'truck) = ~d ~%" (equal 'car 'truck)) ; (equal 'car 'truck) = Nil
(format t "(equal 10 10) = ~d ~%" (equal 10 10)) ; (equal 10 10) = T
(format t "(equal 5.5 5.3) = ~d ~%" (equal 5.5 5.3)) ; (equal 5.5 5.3) = Nil
(format t "(equal \"string\" \"String\") = ~d ~%" (equal "string" "String")) ; (equal "string" "String") = Nil
(format t "(equal (list 1 2 3) (list 1 2 3)) = ~d ~%" (equal (list 1 2 3) (list 1 2 3))) ; (equal (list 1 2 3) (list 1 2 3)) = T

(format t "(equalp 1.0 1) = ~d ~%" (equalp 1.0 1)) ; (equalp 1.0 1) = T
(format t "(equalp \"Derek\" \"derek\") = ~d ~%" (equalp "Derek" "derek")) ; (equalp "Derek" "derek") = T
