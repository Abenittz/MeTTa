; is member 
(: is-member (-> Atom List Bool))
(= (is-member $s Nil) Nil)
(= (is-member $s (:: $x $xs)) 
    (if (== $s $x) 
        True (is-member $s $xs)))

! (is-member 2 (:: 1 (:: 2 (:: 4 Nil))))