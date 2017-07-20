(defun perfectos (a b p)
    (loop
        for x from a until (= x b)
        do
        (when (not(eq (perfect x) nil))
            (case p
                (1
                    (when (not(eq (par x) nil))
                        (format t "~%El ~a es perfecto y sus divisores son " x)
                        (format t "~a" (perfect x))
                    )
                )
                (2
                    (when (not(eq (otra x) nil))
                        (format t "~%El ~a es perfecto y sus divisores son " x)
                        (format t "~a" (perfect x))
                    )
                )
                (3
                    (format t "~%El ~a es perfecto y sus divisores son " x)
                    (format t "~a" (perfect x))
                )
            )
        )
    )
)


(defun par (x)
    (return-from par (= (mod x 2) 0))
)
(defun otra (x)
    (return-from otra (= (mod x 7) 0))
)
(defun perfect (x)
    (setf div nil)
    ;;lista de divisores
    (loop
        for i from 1
        while(< i x)
        do
        (if (= (mod x i) 0)
            (setf div (cons i div))
        )
    )
    ;;verificar si es perfecto
    (setf sum 0)
    (loop  
        for xi in div
        do
        (setf sum (+ sum xi)) 
    )
    (if (= sum x) 
        (return-from perfect div)
        (return-from perfect nil)
    )
)

(format t "Numeros perfectos entre 2 numeros(=/= 0) con propiedad~%")

(defvar n1 -1)
(loop while (< n1 1)
    do
    (format t "Primer numero: ")
    (setf n1 (read))
)
(defvar n2 0)
(loop while (<= n2 n1)
    do
    (format t "Segundo numero: ")
    (setf n2 (read))
)
(defvar p nil)
(loop while (not(or (or (eq p 1) (eq p 2)) (eq p 3)))
    do
    (format t "Propiedad([1]par /2 - [2]otra /7 - [3]todos): ")
    (setf p (read))
)

(perfectos n1 n2 p)
