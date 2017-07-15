(setq *print-case* :capitalize)

(format t "(expt 4 2) = ~d ~%" (expt 4 2)) ;;;(expt 4 2) = 16 
(format t "(sqrt 81) = ~d ~%" (sqrt 81)) ;;;(sqrt 81) = 9 
(format t "(exp 1) = ~d ~%" (exp 1)) ;;;(exp 1) = 2.7182817 
(format t "(log 1000 10) = ~d ~%" (log 1000 10)) ;;;(log 1000 10) = 3 
(format t "(eq 'dog 'dog) = ~d ~%" (eq 'dog 'dog)) ;;;(eq 'dog 'dog) = T 
(format t "(floor 5.5) = ~d ~%" (floor 5.5)) ;;;(floor 5.5) = 5 
(format t "(ceiling 5.5) = ~d ~%" (ceiling 5.5)) ;;;(ceiling 5.5) = 6 
(format t "(max 5 10) = ~d ~%" (max 5 10)) ;;;(max 5 10) = 10 
(format t "(min 5 10) = ~d ~%" (min 5 10)) ;;;(min 5 10) = 5 
(format t "(oddp 15) = ~d ~%" (oddp 15)) ;;;(oddp 15) = T 
(format t "(evenp 15) = ~d ~%" (evenp 15)) ;;;(evenp 15) = Nil 
(format t "(numberp 2) = ~d ~%" (numberp 2)) ;;;(numberp 2) = T 
(format t "(null nil) = ~d ~%" (null nil)) ;;;(null nil) = T 


;;; OTHER FUNCTIONS sin, cos, tan, asin, acos, atan