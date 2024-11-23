 ; random bit
(= (bin) 0)
(= (bin) 1)
 ; binary list with the same number of elements
(= (gen-bin-list ()) ())
(= (gen-bin-list (:: $x $xs))
    (:: (bin) (gen-bin-list $xs))
)
 ; sum of products of elements of two lists
(= (scalar-product () ()) 0)
(= (scalar-product (:: $x $xs) (:: $y $ys))
    (+ (* $x $y) (scalar-product $xs $ys))
)
 ; check the candidate solution
(= (test-solution $numbers $solution $target-sum)
    (if (== (scalar-product $numbers $solution)
            $target-sum)
        $solution
        (empty)
    )
)
 ; task
(= (task) (:: 8 (:: 3 (:: 10 (:: 17 ())))))
! (test-solution (task) (gen-bin-list (task)) 20)

(= (list ()) ())
(= (list (:: $x $xs))
     ( (* $x 2) (list $xs))
)

(= (num) (:: 8 (:: 3 (:: 10 (:: 17 ())))))
! (list (num))

(= (arr) (:: 8 (:: 3 (:: 10 (:: 17 ())))))
(= (insert $x $xs) 
    (:: $x $xs)
)

! (insert 4 (arr))
! (arr)

(= (insert_at_index $i (:: $x $xs))
    (add-reduct $self (= (foo) (:: $x $xs)))
)


(= (map $f ()) ())
(= (map $f $x $xs)
    (:: $x ($xs))
)

; !(map (insert) 4 (arr))
; ! (map)

; ! (insert_at_index 4 (arr))

; ! (foo)