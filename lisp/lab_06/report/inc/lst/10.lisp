(defun square (lst)
    (cond ((null lst) Nil)
          (t (cons (* (car lst) (car lst)) (square (cdr lst))))
    )
)