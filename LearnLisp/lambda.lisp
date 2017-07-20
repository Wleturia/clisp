(setq *print-case* :capitalize)

(mapcar (lambda (x) (print (* x 2))) '(1 2 3 4 5))


;2
;4
;6
;8
;10