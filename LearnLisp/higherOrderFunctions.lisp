(setq *print-case* :capitalize)

(defun times-3 (x) (* 3 x))
(defun times-4 (x) (* 4 x))

(defun multiples (mult-func max-num)
    (dotimes (x max-num)
    (format t "~d : ~d ~%" x (funcall mult-func x)))
)

(multiples #'times-3 10)
(multiples #'times-4 10)

#||
0 : 0
1 : 3
2 : 6
3 : 9
4 : 12
5 : 15
6 : 18
7 : 21
8 : 24
9 : 27
0 : 0
1 : 4
2 : 8
3 : 12
4 : 16
5 : 20
6 : 24
7 : 28
8 : 32
9 : 36
||#