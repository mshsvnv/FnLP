(defun f (x)
    (cond ((oddp x) (+ x 1))
          (t x             ) ) )

(print (f 1)) ;; 2
(print (f 4)) ;; 4