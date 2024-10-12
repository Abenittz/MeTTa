(: list(-> List))
(: insert(-> Atom List List))
(: insert_back(-> Atom List List))

(= (list) (:: 1(:: 2 (:: 3 Nil))))

; insert head
(= (insert $s $xs)
    (:: $s $xs))

; insert at the back 
(= insert_back $s Nil)
    (:: $xs(:: $s Nil))
(= (insert_back $s (:: $x $xs))
    (:: $x (insert_back $s $xs)))


; execute
! (insert 5 (list))
! (insert_back 4 (list)) 