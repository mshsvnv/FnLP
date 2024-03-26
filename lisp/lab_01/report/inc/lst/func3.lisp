((lambda (arl) (list (list (list arl)))) "a")
((lambda (arl) (cons (cons (cons arl Nil) Nil) Nil)) "a")

(defun f1 (arl) (list (list (list arl))))
(defun f1 (arl) (cons (cons (cons arl Nil) Nil) Nil))