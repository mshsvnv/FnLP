;; (2 (3 (5 (6))))

(defun f (x y) 
    (+ (* x x 3) y)
)

(defun ff1 (x y) 
    (cons 'f 
          (cons x 
                (cons y Nil) )))

(defun ff2 (x y)
    (eval (cons 'f 
                (cons x 
                      (cons y Nil) ) )))

;; (print (caadr '(2 (3 (5 (6))))))
;; (print (caadr (cadadr '(2 (3 (5 (6)))))))

(print (eval (ff1 (caadr '(2 (3 (5 (6))))) (caadr (cadadr '(2 (3 (5 (6)))))))))
(print (ff2 (caadr '(2 (3 (5 (6))))) (caadr (cadadr '(2 (3 (5 (6))))))))

(print ( (lambda (l) (ff2 (caadr l) (caadr (cadadr l)))) '(2 (3 (5 (6)))) ) )