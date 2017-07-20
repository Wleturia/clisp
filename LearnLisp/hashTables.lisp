(setq *print-case* :capitalize)

(defparameter people (make-hash-table))

(setf (gethash '102 people) '(Paul Smith))
(setf (gethash '103 people) '(Sam Smith))

(format t "~a ~%" (gethash '102 people))

(maphash #'(lambda (k v) (format t "~a = ~a ~%" k v)) people)

(remhash '103 people)

;;; - Construcción: MAKE-HASH-TABLE
;;; - Acceso al valor asociado a una clave: GETHASH
;;; - Insertar nuevas entradas o modificar existentes: (SETF (GETHASH ...)..)
;;; - Borrado de una entrada: REMHASH
;;; - maphash - recorre el hashtable devuelve key & valor
;;; - (maphash #'(lambda (k v) operacion) table) 
;;; - (maphash #'(lambda (k v) (print (list k v))) table)
;;; - (maphash #'(lambda (key val) (when (oddp val) (remhash key table))) table)