
(defun get_middle (lst x)
    (cond ((null lst) lst)
          ((null (cdr lst)) (cons x Nil))
          (t (cons (car lst) (get_middle (cdr lst) x)))
    )
)

(defun swap (lst) 
    (cons (car (last lst)) (get_middle (cdr lst) (car lst)))
)