; reverse operation 
(: reverse (-> List List))
(= (reverse Nil) Nil)
(= (reverse (:: $x Nil)) ($x Nil))
(= (reverse (:: $x $xs))
     (append (reverse $xs) (:: $x Nil))) 

! (reverse (:: 1 (:: 2 (:: 3 Nil))))