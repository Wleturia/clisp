(setq *print-case* :capitalize)

(format t "(+ 5 4) = ~d ~%" (+ 5 4)) ; (+ 5 4) = 9
(format t "(- 5 4) = ~d ~%" (- 5 4)) ; (- 5 4) = 1
(format t "(* 5 4) = ~d ~%" (* 5 4)) ; (* 5 4) = 20
(format t "(/ 5 4) = ~d ~%" (/ 5 4)) ; (/ 5 4) = 5/4
(format t "(/ 5 4) = ~d ~%" (/ 5 4)) ; (/ 5 4) = 5/4
(format t "(rem 5 4) = ~d ~%" (rem 5 4)) ;(rem 5 4) = 1
(format t "(mod 5 4) = ~d ~%" (mod 5 4)) ;(mod 5 4) = 1