(setq *print-case* :capitalize)

(loop for x from 1 to 10
    do
    (print x)
)

; 1
; 2
; 3
; 4
; 5
; 6
; 7
; 8
; 9
; 10


(setq x 1)
(loop 
    (format t "~d ~%" x)
    (setq x( + x 1))
    (when (> x 10) (return x))
)

; 1
; 2
; 3
; 4
; 5
; 6
; 7
; 8
; 9
; 10

(loop for x in '(Peter Paul Mary)
    do
    (format t "~s ~%" x)
)

; Peter
; Paul
; Mary

(loop for y from 100 to 110 
    do
    (format t "~d ~%" y)
)
;100
;101 
;102 
;103
;104
;105
;106
;107
;108
;109
;110