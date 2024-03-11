(defun set-equal (lst1 lst2)
    (let 
        ((inter (intersection lst1 lst2)))
    (cond ((and (= (length lst1) (length lst2))
                (= (length lst1) (length inter))) 
           t)
          (t nil)))
)