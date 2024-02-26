(print (cons 'A 'B)) ;; (A . B)
(print (cons 'A Nil)) ;; (A)

(print 
    (cons (cons 'A Nil) (cons (cons 'B Nil) Nil))
) ;; ((A) (B))

(print (cons 'A (cons 'B (cons 'C Nil)))) ;; (A B C)

(print (cons (cons 'A Nil) (cons (cons 'B Nil) (cons (cons 'C Nil) Nil))))
;; ((A) (B) (C))

(print (cons (cons 'A 'B) (cons 'C Nil))) ;; ((A . B) C)

(print (cons 'A (cons (cons 'B Nil) (cons 'C Nil)))) ;; (A (B) C)

(print 
    (cons (cons 'A (cons 'B Nil)) 
    (cons (cons 'C (cons 'D Nil)) Nil))
) ;; ((A B) (C D))

(print (cons 'A '(B C))) ;; (A B C)
(print (list 'A '(B C))) ;; (A (B C))