(: Sorter (-> Atom List List))
(= (Sorter $x Nil) (:: $x Nil))
(= (Sorter $x (:: $y $ys))
    (if (< $x $y)
        (:: $x (:: $y $ys))
        (:: $y (Sorter $x $ys))))

(: Sort (-> List List))
(= (Sort Nil) Nil)
(= (Sort (:: $x $xs))
        (Sorter $x (Sort $xs)))

(= (arr) (:: 2(:: 3(:: 6(:: 1 Nil)))))

! (Sort (:: 2 (:: 1 (:: 4 (:: 5 (:: 3 Nil))))))