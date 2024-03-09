(defun roll_dice ()
    ( setf *random-state* (make-random-state t))
    (+ (random 6) 1)
)


(print (roll_dice))

(defun firstPlayer ()
    (setf firstCube (roll_dice))
    (setf secondCube (roll_dice))
    (setf firstSum (+ firstCube secondCube))
    (setf result 0)

    (print (list 'Игрок 1 'получил (list firstCube secondCube)))

    (if (or (eq firstSum 7) (eq firstSum 11))
        (setf result 1) 

        (if (or (and (eq firstCube 6) (eq secondCube 6))
                (and (eq firstCube 1) (eq secondCube 1)))

            (and (print (list 1 'игрок 'перебрасывает))
                (firstPlayer))
                NIL
        )
    )
)

(defun secondPlayer ()
    (setf firstCube (roll_dice))
    (setf secondCube (roll_dice))
    (setf secondSum (+ firstCube secondCube))
    

)

(defun game ()
    (firstPlayer)
    (if (eql result 1)
        (print (list 1 'игрок 'победил))
        (and (print (list 'Ход 'переходит 'ко 2 'игроку))
            (secondPlayer)
        )

            ))

(game)