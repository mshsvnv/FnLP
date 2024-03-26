(defun no_last_1 (lst)
    (reverse (cdr (reverse lst)))
)

(defun no_last_2 (lst)
    (cond ((null (cdr lst)) Nil)
          (t (cons (car lst) (no_last_2 (cdr lst)))))
)