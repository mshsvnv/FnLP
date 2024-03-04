(defun f (x)
      (cond ((< 0 x) (sqrt x))
            (t (cons 0 (cons (sqrt (abs x)) Nil ) ) )
      )
)

(defun solve (a b c d) 
      (cond ((> (+ a b) (+ c d)) 
                  (cond ((> a b) (cons (f (+ a b)) (cons ( f (+ c d)) Nil))) 
                        ((= a b) (cons a (cons b Nil)                     ))
                        (t       (cons a (cons (f (+ c d)) Nil)           ))))
            (t
                  (cond ((> a b) (cons (f (+ (- a c) d)) (cons ( f (- c d)) Nil)))
                        (t       (cons (f (- d c)) (cons ( f (- c d)) Nil)      ))))
      )
)

(print (solve 4 3 1 2))
(print (solve 4 4 1 2))
(print (solve 3 4 1 2))

(print (solve 2 1 3 4))
(print (solve 1 2 4 3))