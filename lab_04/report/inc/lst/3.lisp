(defun last_1 (lst)
    (last lst)
)

(defun last_2 (lst)
    (cond ((null lst) Nil)
          (t (cons (car (reverse lst)) Nil))
    )
)

(defun last_3 (lst)
    (cond ((cdr lst) (last_3 (cdr lst)))
          ((cond ((null lst) Nil)
                 (t (cons (car lst) Nil)))
          )
    )
)