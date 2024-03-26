;; (defun how_alike_old (x y)
;;         (cond ((or (= x y) (equal x y)) 'the_same)
;;               ((and (oddp x) (oddp y)) 'both_odd)
;;               ((and (evenp x) (evenp y)) 'both_even)
;;               (t 'difference) ) )

(defun how_alike (x y)
        (if (or (= x y) (equal x y)) 
            'the_same 
        (if (and (oddp x) (oddp y)) 
            'both_odd 
        (if (and (evenp x) (evenp y)) 
            'both_even 
        'difference) ) ) )

(print (how_alike 1 3)) ;; BOTH_ODD
(print (how_alike 2 3)) ;; DIFFERENCE
(print (how_alike 2 4)) ;; BOTH_EVEN
(print (how_alike 2 2)) ;; THE_SAME