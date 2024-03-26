(defun f1 (lst n)
    (cond ((null lst) Nil)
          (t (cond
                ((numberp (car lst)) (cons (* (car lst) n) (f1 (cdr lst) n)))
                (t (cons (car lst) (f1 (cdr lst) n)))
          ))
    )
)

(defun f2 (lst n)
    (mapcar #'(lambda (x) (cond ((numberp x) (* x n))
                                (t x))) lst)
)