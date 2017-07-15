;;;;    DESCRIBE THE PROGRAM
;;;     BASIC
;;      INTO CODE
;       AFTER A LINE OF CODE

#||
MULTILINE
||#

;;; ALL IS INTO BRACKETS
(format t "Hello world ~%")

(print "What's your name?")

;;; VARIABLES NAME CAN CONTAIN letters numbers + - _ * = < > ? !
;;; CAN'T USE WHITESPACE IN VARIABLE NAMES
;;; LOWERCASE

;;;DEFINE A VARIABLE
(var *name* (read)) ; READS FROM CONSOLE

(defun hello-you(*name*)
    ;;; ~a : SHOWS THE VALUE
    ;;; ~s : SHOWS QUOTES AROUND THE VALUE
    ;;; ~10a : ADDS 10 SPACES FOR THE VALUE WITH EXTRA SPACE TO THE RIGHT
    ;;; ~10@a : ADDS 10 SPACES FOR THE VALUE WITH EXTRA SPACE TO THE LEFT
    (format t "Hello ~a! ~%" *name*)
)

(setq *print-case* :capitalize) ; :upcase, : downcase

(hello-you *name*)

;;FUNCTION ATRIBUTE1 ATRIBUTE2
(+ 5 4) 
(+ 5 (- 6 2))
;;EVERYTHING IS A LIST
(+ 5 4) ;[+] [5] [4] [NIL]

;;DEFINE A VARIABLE
(defvar *number* 0)
;;CHANGUE THE VALUE OF THE VARIABLE
(setf *number* 1)