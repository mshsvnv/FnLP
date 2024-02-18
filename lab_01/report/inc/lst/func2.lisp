((lambda (ar1 ar2) (list (list ar1) (list ar2))) "a" "b")
((lambda (ar1 ar2) (cons (cons ar1 Nil) (cons (cons ar2 Nil) Nil))) "a" "b")

(defun f1 (ar1 ar2) (list (list ar1) (list ar2)))
(defun f1 (ar1 ar2) (cons (cons ar1 Nil) (cons (cons ar2 Nil) Nil)))