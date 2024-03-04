(defun f (x y)
    (cond ((< x y) (cons x (cons y Nil)))
          (t (cons y (cons x Nil))      ) ) )

(print (f 1 2)) ;; 1 2
(print (f 2 1)) ;; 2 1