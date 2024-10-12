; min-value
(: min-value (-> List Int))
(= (min-value Nil) Nil)
(= (min-value (:: $x Nil)) $x)
(= (min-value (:: $x $xs))
    (let ((min-xs (min-value $xs))))
        (if (== min-xs Nill)
            $x
            (if (< $x min-xs)
                $x min-xs)))
            
(= (arr) (:: 1 (:: 2 (:: 3 (:: 4 Nil)))))
! (min-value (arr))