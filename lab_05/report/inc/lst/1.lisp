(defun f1 (lst)
    (cond ((null lst) Nil)
          (t (cond
                ((numberp (car lst)) (cons (- (car lst) 10) (f1 (cdr lst))))
                (t (cons (car lst) (f1 (cdr lst))))
          ))
    )
)

(defun f2 (lst)
    (mapcar #'(lambda (x) (cond ((numberp x) (- x 10))
                                (t x))) lst)
)