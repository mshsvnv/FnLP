(defun f (x y z)
    (cond ((> x y) (< x z))
          ((< z x) (< x y)) ) )

(print (f 0 -1 1)) ;; T
(print (f 0 1 -1)) ;; T
(print (f 0 0 0))  ;; Nil
(print (f 1 1 0))  ;; Nil
(print (f 0 1 0))  ;; Nil