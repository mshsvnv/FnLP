(defun non-empty(lst)
    (cond ((null lst) Nil)
          ((listp (car lst)) (car lst))
          (t (non-empty (cdr lst)))
    )
)