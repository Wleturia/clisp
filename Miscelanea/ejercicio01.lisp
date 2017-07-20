;;;AUTHOR: Walter Leturia

;;;************************************************************************ 
;;; 1) Definir la función (longitud lst) que devuelva la longitud de la 
;;; lista lst. Por ejemplo: 
;;; 
;;; > (longitud '(a b c d)) 
;;; 4 
;;;************************************************************************
(setq *print-case* :capitalize)

(format t "Bienvenido al programa~%")
(format t "Ingrese una lista: ")
(defvar *lista* (read-from-string (concatenate 'string "(" (read-line) ")"))) ;READ LIST
(defun longitud (x)  
   (do ((n 0 (+ n 2))           ;Counter.
        (fast x (cddr fast))    ;Fast pointer: leaps by 2.
        (slow x (cdr slow)))    ;Slow pointer: leaps by 1.
       (nil)
     ;; If fast pointer hits the end, return the count.
     (when (endp fast) (return n))
     (when (endp (cdr fast)) (return (+ n 1)))
     ;; If fast pointer eventually equals slow pointer,
     ;;  then we must be stuck in a circular list.
     ;; (A deeper property is the converse: if we are
     ;;  stuck in a circular list, then eventually the
     ;;  fast pointer will equal the slow pointer.
     ;;  That fact justifies this implementation.)
     (when (and (eq fast slow) (> n 0)) (return nil))))
(format t "El tamaño de tu lista es: ~d"(longitud *lista*))
