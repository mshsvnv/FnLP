;; числа Фиобонначи

;; Сформировать S-выр. кот. по номеру операции 
;; (арифм.) и списку аргументов (чисел, с кот. надо вып. действия) 
;; определяет результат применения операции к заданному списку.

;; Использовать только 2 симв. атома — а и б, 
;; при этом в S-выр. можно исп. только а.

;; defvar, set, setf 

;; (setf b '(+ - * /))
;; (setf a 'b)
;; (defun b (n) (nth n b))
;; (defun a (n lst) (apply (b n) lst))

;; (defun test (a b) 1)

;; (defvar test 5)
;; (defun test () 2)

;; (print (test))
;; (print (cons (test) Nil))

;; (setf b '(+ - * /))
;; (setf a b)
;; (defun b (n lst)
;;   (apply (nth n a) lst))


(defvar lst '(+ 1 2 3))

(print (eval lst))



;; (defvar lst '(1 2 3 4))

;; (print (nth 0 lst))
;; (print (last lst))
;; (print (reverse lst))
;; (print (append lst (reverse lst)))


;; ;; приколы 
;; (defun x () 9)
;; (defvar x 'y)
;; (defvar y 'x)
;; (defun y () 7)

;; (print (funcall (eval x)))  ;; 9
;; (print (funcall (eval 'y))) ;; 9

;; (print (funcall 'x))        ;; 9
;; (print (funcall x))         ;; 7

;; (print (funcall 'y))        ;; 7
;; (print (funcall y))         ;; 9

;; (write-line "")

;; (print (+ 2 3))
;; (print '(+ 2 3))
;; (print (eval (+ 2 3)))
;; (print (eval '(+ 2 3)))