(setq *print-case* :capitalize)

(defclass animal()
(name
sound))

(defparameter *dog* (make-instance 'animal))

(setf (slot-value *dog* 'name) "Spot")
(setf (slot-value *dog* 'sound) "Woof")

(format t "~a says ~a ~%"
    (slot-value *dog* 'name)
    (slot-value *dog* 'sound)
)


(defclass mammal ()
    ((name
        :initarg :name
        :initform (error "Must provide a name"))
    (sound 
        :initarg :sound
        :initform "No sound"
        :accessor mammal-sound
    ))
)

(defparameter *king-kong* 
    (make-instance 'mammal :name "King Kong" :sound "Rawr")
)

(format t "~a says ~a ~%"
    (slot-value *king-kong* 'name)
    (slot-value *king-kong* 'sound)
)

(defparameter *fluffy*
    (make-instance 'mammal :name "Fluffy" :sound "Meow")
)


(defgeneric make-sound (mammal))
(defmethod make-sound ((*the-mammal*     mammal))
    (format t "~a says ~a ~%"
    (slot-value *the-mammal* 'name)
    (slot-value *the-mammal* 'sound)
    )
)

(make-sound *king-kong*)
(make-sound *fluffy*)

(defgeneric (setf mammal-name) (value the-mammal))

(defmethod (setf mammal-name) (value (the-mammal mammal))
    (setf (slot-value the-mammal 'name) value)
)

(defgeneric mammal-name (the-mammal))

(defmethod mammal-name ((the-mammal mammal))
    (slot-value the-mammal 'name)
)

(setf (mammal-name *king-kong*) "Kong")

(format t "I' m ~d ~%" (mammal-name *king-kong*))

(setf (mammal-sound *king-kong*) "Rawwwwwwwwwwwr")
(format t "~a ~%" (mammal-sound *king-kong*))

(defclass dog (mammal)())

(defparameter *rover*
    (make-instance 'dog :name "Rover" :sound "Woof")
)

(make-sound *rover*)