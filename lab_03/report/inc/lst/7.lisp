(defun pred1 (x)
    (and (numberp x) (plusp x)) )

(defun pred2 (x)
    (and (plusp x) (numberp x)) )

(print (pred1 1))      ;; T
(print (pred2 1))      ;; T

(print (pred1 "1"))    ;; Nil
(print (pred2 "1"))    ;; ошибка