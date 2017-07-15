(setq *print-case* :capitalize)

(format t "Number with commas ~:d" 1000000) ; 10,000,000
(format t "PI to 5 characters ~5f" 3.141593) ; 3.142
(format t "PI to 4 decimals  ~,4f" 3.141593) ; 3.1416
(format t "10 Percent  ~,,2f".10) ; 10.0 
(format t "10 Dollars ~$ ~%" 10) ; 10.00 $