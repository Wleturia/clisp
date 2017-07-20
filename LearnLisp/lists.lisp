(setq *print-case* :capitalize)

(cons 'superman 'batman)

(list 'superman 'batman 'flash)

(cons 'aquaman '(superman batman))


;;GET ELEMENTS FROM A LIST
;; A IS THE FIRST ELEMENT
;; D = EVERYTHING ELSE
;; WE PUT MORE D'S TO CUT THE LIST
(format t "First = ~a ~%" (car '(superman batman aquaman))) ; First = Superman

(format t "Everything Else= ~a ~%" (cdr '(superman batman aquaman))) ; Everything Else= (Batman Aquaman)

(format t "2nd Item= ~a ~%" (cadr '(superman batman aquaman flash joker))) ;2nd Item= Batman

(format t "4th Item= ~a ~%" (cadddr '(superman batman aquaman flash joker))) ; 4th Item= Flash

;;CHECK IF WE HAVE A LIST
(format t "Is a list? = ~a ~%" (listp '(batman superman))) ; Is a list? = T

;;CHECK FOR AN ITEM IN THE LIST
(format t "Is 3 in list? = ~d ~%" (if (member 3 '(2 4 6)) 't nil)) ; Is 3 in list? = Nil

;;ADD AN ITEM WITH APPEND 
(append '(just) '(some) '(random words))

;;PUSH AN ITEM 
(defparameter *nums* '(2 4 6))
(push 1 *nums*)

;;CHECK A POSITION
(format t "2nd Item in list is: ~a ~%" (nth 2 *nums*)) ; 2nd Item in list is: 4

;;;

(defvar superman(list :name "Superman" :secret-id "Clar Kent"))
(defvar *hero-list* nil)
(push superman *hero-list*)
(dolist (hero *hero-list*)
    (format t "~{~a : ~a ~}~%" hero)
) ; Name : Superman Secret-Id : Clar Kent