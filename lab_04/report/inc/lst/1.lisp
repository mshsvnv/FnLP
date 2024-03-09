(setf lst1 '(a b c))
(setf lst2 '(d e))

(print (cons lst1 lst2))   ;; ((A B C) D E)
(print (list lst1 lst2))   ;; ((A B C) (D E))
(print (append lst1 lst2)) ;; (A B C D E)