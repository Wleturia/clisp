(setq *print-case* :capitalize)

(defparameter *heroes*
    '((Superman (Clark Ketn))
    (Flash (Barry Allen))
    (Batman (Bruce Wayne))))

;;GET DATA FROM HEROES
(format t "Superman Data ~a ~%" (assoc 'superman *heroes*)) ; Superman Data (Superman (Clark Ketn))

(format t "Superman Data ~a ~%" (cadr(assoc 'superman *heroes*))) ; Superman Data (Clark Ketn)

(defparameter *hero-size*
    '((Superman (6 ft 3 in) (230 lbs))
    (Flash (6 ft 0 in) (190 lbs))
    (Batman (6 ft 2 in) (210 lbs))))

(format t "Superman is ~a ~%" (cadr (assoc 'Superman *hero-size*))) ; Superman is (6 Ft 3 In)

