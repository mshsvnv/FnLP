(defun f (a b)
    (cond ((< a b) Nil)
          (t t        ) ) )

(print (f 1 2)) ;; Nil
(print (f 2 2)) ;; T
(print (f 3 2)) ;; T