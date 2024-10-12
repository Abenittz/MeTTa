(: map (-> (Atom -> Atom) List List ))
(= (map $f Nil) Nil)
(= (map $f (:: $x $xs))
        (($f $x)  (map $f $xs))
)

(= (increment $x) 
        (+ 1 $x))

(= (arr) (:: 1 (:: 2 (:: 3 (:: 4 Nil)))))

! (map increment (arr))