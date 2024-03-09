(defun get_sum (dice)
    (+ (car dice) (cdr dice))
)

(defun roll_dice ()
    (setf *random-state* (make-random-state t))
    (cons (+ (random 5) 1)
          (+ (random 5) 1)
    )
)

(defun is_abs_win (dice)
    (let (
            (sum (get_sum dice))
         )
         (or (= sum 7) (= sum 11))
    )
)

(defun is_reroll (dice)
    (let (
            (fir (car dice))
            (sec (cdr dice))
         )
         (or (and (= fir 6) (= sec 6))
             (and (= fir 1) (= sec 1)))
    )
)

(defun get_dice_res (id)
    (let (
            (dices (roll_dice))
         )
         (print 'Player)
         (princ id)
         (print 'dices)
         (princ dices)
         (cond ((is_reroll dices) 
                (print 'Rerolling)
                (get_dice_res id))
               (t dices))
    )
)

(defun game ()
    (let (
            (dice1 (get_dice_res 1))
            (dice2 (get_dice_res 2))
         )
         (cond (
                    (is_abs_win dice1) 
                    (print "Player1 won absolutely")
               )
               (
                    (is_abs_win dice2) 
                    (print "Player2 won absolutely")
               )
               (
                    (> (get_sum dice1) (get_sum dice2)) 
                    (print "Player1 won")
               )
               (
                    (< (get_sum dice1) (get_sum dice2)) 
                    (print "Player2 won")
               )
               (
                    (= (get_sum dice1) (get_sum dice2)) 
                    (print "Draw")
               )
         )
    )
)

(game)