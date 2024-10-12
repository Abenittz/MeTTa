(: Tree (-> Atom Tree Tree Tree))
(: Leaf (-> Tree))

(= (Leaf) Nil)

;; inserting into a tree
(: insert (-> Atom Tree Tree))
(= (insert $value Nil) (Tree $value (Leaf) (Leaf)))
(= (insert $value (Tree $root $left $right))
    (if (< $value $root) 
        (Tree $root (insert $value $left) $right)
        (Tree $root $left (insert $value $right))))


; ! (insert 5 Nil)
; ! (insert 7 (Tree 5 Nil Nil))
! (insert 3 (Tree 5 Nil (Tree 7 Nil Nil)))

(: search (-> Atom Tree Bool))
(= (search $value Nil) False)
(= (search $value (Tree $root $left $right))
    (if (== $value $root)
        True
        (if (< $value $root)
            (search $value $left)
            (search $value $right))))

! (search 8 (Tree 5 (Tree 3 Nil Nil) (Tree 7 Nil Nil)))


(: Preorder (-> Tree List))
(= (Preorder Nil) Nil)
(= (Preorder (Tree $root Nil Nil)) 
    (list $root))
(= (Preorder (Tree $root $left $right))
    (append (list $root) (Preorder $left) (Preorder $right)))

! (Preorder (Tree 5 Nil Nil))

(: Inorder (-> Tree List))
(= (Inorder Nil) Nil)
(= (Inorder (Tree $root Nil Nil)) (list $root))

(= (Inorder (Tree $root $left $right))
    (append (Inorder $left) (list $root) (Inorder $right)))

! (Inorder (Tree 5 Nil Nil))

(: Postorder (-> Tree List))
= (Postorder (Tree $root Nil Nil)) 
    (list $root))
(= (Postorder (Tree $root $left $right))
    (append (Preorder $left) (Preorder $right) (list $root)))

! (Postorder (Tree 5 Nil Nil))