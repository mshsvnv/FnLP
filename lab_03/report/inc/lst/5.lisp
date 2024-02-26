(print (and 'fee 'fie 'foe)        ) ;; FOE
(print (or nil 'fie 'foe)          ) ;; FIE
(print (and (equal 'abc 'abc) 'yes)) ;; YES

(print (or 'fee 'fie 'foe)         ) ;; FEE
(print (and nil 'fie 'foe)         ) ;; Nil
(print (or (equal 'abc 'abc) 'yes) ) ;; T