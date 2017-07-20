(defvar factorial 1)

(defun factorial (n)
    (loop
        for i from 1
        while (< i n)
        do
        (setf factorial (* factorial i))
    )
    (format t "~%Factorial(~a) = " n)
    (format t "~a " factorial)
)

(format t "Hallar el factorial del número: ")
(defvar n (read))
(factorial n)
