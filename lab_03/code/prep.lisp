;; (print ((lambda (x y) (+ x y)) 1 2))

;; (print (apply #'(lambda (x y) (+ x y)) '(1 2)) )
;; (print (funcall #'(lambda (x y) (+ x y)) 1 2) )

;; решить ax^2 + bx + c = 0

(defun D (a b c) (- (* b b) (* 4 a c)) ) 

;; (defun f (a b c) 
;;     (cond ((< (D a b c) 0) "D < 0")
;;           (t (cons (/ (+ (* -1 b) (D a b c)) (* 2 a)) (cons (/ (- (* -1 b) (D a b c)) (* 2 a)) Nil))) ))

(defun f (d a b c) 
    (cond ( (< d 0) 
            (cons (cons (/ (- b) (* 2 a)) (/ (sqrt (abs d)) (* 2 a))) 
                  (cons (cons (/ (- b) (* 2 a)) (/ (sqrt (abs d)) (* -2 a))) Nil)) )
          ( (= d 0) 
            (cons (/ (- b) (* 2 a)) 
                  (/ (- b) (* 2 a))))
          (t (cond ((< (/ (+ (* -1 b) (sqrt d)) (* 2 a)) (/ (- (* -1 b) (sqrt d)) (* 2 a))) (cons (/ (+ (* -1 b) (sqrt d)) (* 2 a)) (cons (/ (- (* -1 b) (sqrt d)) (* 2 a)) Nil)))
                   (t (cons (/ (- (* -1 b) (sqrt d)) (* 2 a)) (cons (/ (+ (* -1 b) (sqrt d)) (* 2 a)) Nil))))) 
    )
)

(print (f (D 11 21.0 123.0) 11 21.0 123.0))

;; НА ЛИСТОЧКЕ ПОД НАДЗОРОМ написать функцию а, которая принимает три списка вида  '(1 2 3) и число k
;; Например списки  '(1 2 3) '(4 5 6 ) '(7 8 9) и k=2 

;; Если все последние элементы списков больше k, то вернуть ( (1 . 2) (4 . 5) (7 . 8)), иначе (NIL)

;; (defun f1 (k l1 l2 l3)
;;     (cond ((and (> (caddr l1) k) (> (caddr l2) k) (> (caddr l3) k)) 
;;             (cons (cons (car l1) (cadr l1)) (cons (cons (car l2) (cadr l2)) (cons (cons (car l3) (cadr l3)) Nil))) )
;;           (T nIL))
;; )

;; (print (f1 2 '(1 2 3) '(4 5 6 ) '(7 8 1)))
