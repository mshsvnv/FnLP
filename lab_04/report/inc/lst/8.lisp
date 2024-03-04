(defun f_cond (x y z)
    (cond ((> x y) (< x z))
          ((> x z) (< x y)) ) )

(defun f_if (x y z)
    (if (< y x) 
        (if (< x z) t Nil) 
    (if (< x y) 
        (if (< z x) t Nil)) ) )

(defun f_and_or (x y z)
    (or (and (< y x) (< x z)) 
        (and (< z x) (< x y))) )