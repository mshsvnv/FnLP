(print (reverse '(a b c)))       ;; (C B A)
(print (reverse '(a b (c (d))))) ;; ((C (D)) B A)
(print (reverse '(a)))           ;; (A)
(print (reverse ()))             ;; NIL
(print (reverse '((a b c))))     ;; ((A B C))

(print (last '(a b c)))          ;; (C)
(print (last '(a)))              ;; (A)
(print (last '(a b (c))))        ;; ((C))
(print (last ()))                ;; NIL