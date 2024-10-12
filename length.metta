(: length(-> List Int))
(= (length Nil) 0)
(= (length (:: $x $xs))
    (+ 1 (length $xs)))

(= (list) (:: 1 (:: 2 (:: 3 (:: 4 Nil)))))
! (length (list))