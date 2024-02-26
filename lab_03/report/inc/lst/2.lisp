(defun f (x)
    (cond ((> x 0) (+ 1 x))
          (t (+ x -1)     ) ) )

(print (f -1)) ;; -2
(print (f 1))  ;; 2