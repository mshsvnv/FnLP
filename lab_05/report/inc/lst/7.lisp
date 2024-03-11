(defun f (lstX lstY)
    (apply #'append 
        (mapcar #'(lambda (x) 
                            (mapcar #'(lambda (y) (cons x (cons y Nil))) lstX)) lstY))
)