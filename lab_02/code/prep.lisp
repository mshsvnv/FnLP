;; (defun hyp(a b) 
;;     (sqrt (+ (* a a) (* b b)))
;; )

;; (print((lambda (a b) (sqrt (+ (* a a) (* b b)))) 3 4))

;; (defun vol (a b c)
;;     (* (* a b) c)
;; )

;; (print(vol 1 2 31))

;; (defun longer_than (l1 l2)
;;     (> (length l1) (length l2))
;; )

;; (print(longer_than '(1 2) '(1 2 3)))
;; (print (car (list 'one 'two)))

;; (print (length '((1 2)(3 4)(5 6))))

;; (print (+ 1 '4)) ;; 5
;; (print (+ 1 4)) ;; 5

;; (print (cons 3 (list 5 6))) ;; (3 5 6)

;; (print (+ 1 2 3 4 5 6))

;; (print (eval Nil))        ;; Nil
;; (print (eval (eval Nil))) ;; Nil
;; (print (eval T))         ;; T
;; (print (eval (eval T)))  ;; T

;; (print (list 'eval Nil)) ;; (EVAL NIL)

;; (print (list 'cons T Nil)) ;; (cons T Nil)
;; (print (eval (list 'cons T Nil))) ;; (T)

;; (defun f2 (x y) (+ x x y y))

;; (print (f2 4 5))           ;; 18
;; (print (apply 'f2 '(4 5))) ;; 18

;; (print (apply #'cons '(A B))) ;; (A . B)

;; защита 1
;; (print '(1 ((2 3 () 4) 5)  7 ((8)) ) )
;; достать (4 (8))

;; (defun f (l)
;;     (cons (cons (caddr (cdaadr l)) Nil) (cons (caar (cadddr l)) Nil))    
;; )

;; (defvar l '(1 (( 2 3 (()) 4 ) 5 ) 7 ((8))))

;; (print (f l))

;; защита 2

(defvar l '(1 2))

(defun f (x y) (* x x y y))
(defun ff (x y) (eval (cons 'f (cons x (cons y Nil)))))

(defun getx (l) (car l))
(defun gety (l) (cadr l))

(print (ff (getx l) (gety l)))

(print (cons (cons 'C 'D) (cons 'B 'C)))