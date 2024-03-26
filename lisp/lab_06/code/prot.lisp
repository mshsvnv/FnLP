(defun f (lst oper)
    (cond 
        ((null lst) nil)
        ((listp (car lst)) (append (f (car lst) oper) (f (cdr lst) oper))) 
        ((not (numberp (car lst))) (f (cdr lst) oper)) 
        ((funcall oper (car lst) 0) (cons (car lst) (f (cdr lst) oper))) 
        (t (f (cdr lst) oper)) 
    )
)

(defun my-merge(lst)
    (append (f lst #'<) (f lst #'>)) 
)

(load "C:/Users/mshsv/quicklisp/setup.lisp")
(ql:quickload "fiveam")

(fiveam:test log_test_1
  (setf lst '((1 2 -3 -4)))
  (setf res '(-3 -4 1 2))
  (fiveam:is (equal res (my-merge lst)))
)

(fiveam:test log_test_2
  (setf lst '(1 a -3 -4))
  (setf res '(-3 -4 1))
  (fiveam:is (equal res (my-merge lst)))
)

(fiveam:test log_test_3
  (setf lst '(1 a (-3 -4)))
  (setf res '(-3 -4 1))
  (fiveam:is (equal res (my-merge lst)))
)

(fiveam:run!)