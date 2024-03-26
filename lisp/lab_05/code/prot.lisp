;; (load "D:/quicklisp.lisp")
(load "C:/Users/mshsv/quicklisp/setup.lisp")
(ql:quickload "fiveam")

;; (defvar c '((-1 -2) (3 4) (5 6)))
;; (setf b c)
;; (setf a b)

;; (print (mapcar #'(lambda (x) (mapcar #'(lambda (y) (* 2 y)) x)) a))
;; (print (mapcar #'(lambda (x) (* (car x) (cadr x))) 'b))
;; (print (reduce #'+ (mapcar #'(lambda (x) (+ (car x) (cadr x))) 'b)))

(defun a()
    (cond ((and (< 0 (caar a)) (< 0 (cadar a))) 
                                               (mapcar #'(lambda (x) 
                                                                    (mapcar #'(lambda (y) 
                                                                                         (* 2 y)) x)) a))
          ((and (> 0 (caar a)) (> 0 (cadar a))) 
                                              (mapcar #'(lambda (x) 
                                                                   (* (car x) (cadr x))) a))
          (t (reduce #'+ (mapcar #'(lambda (x) 
                                              (+ (car x) (cadr x))) a))))
)

(fiveam:test log_test_1
  (setf c '((1 2) (3 4)))
  (setf b c)
  (setf a b)
  (fiveam:is (equal (a) '((2 4) (6 8)))))

(fiveam:test log_test_2
  (setf c '((-1 -2) (3 4)))
  (setf b c)
  (setf a b)
  (fiveam:is (equal (a) '(2 12))))

(fiveam:test log_test_3
  (setf c '((-1 2) (3 4)))
  (setf b c)
  (setf a b)
  (fiveam:is (equal (a) 8)))

(fiveam:run!)