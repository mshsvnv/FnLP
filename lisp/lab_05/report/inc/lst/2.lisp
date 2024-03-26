(defun f (lst)
    (mapcar #' * lst lst)
)

(defun f (lst)
    (mapcar #'(lambda (x) (* x x)) lst)
)