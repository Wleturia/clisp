(setq *print-case* :capitalize)

(with-open-file (my-stream
    "test.txt"
    :direction :output
    :if-exists :supersede)
    (princ "Some randonm Text" my-stream))

(let ((in (open "test.txt" :if-does-not-exist nil)))
    (when in
        (loop for line = (read-line in nil)
        while line do(format t "~a~%" line))
        (close in)
    )
)