; Question 1
(sort '(8 2 5 1 3) (lambda (x y) (< (sin x) (sin y))))

; Question 2
(sort (list (list 1 4 6 2) (list 0 2) (list 9 7 2 4 6 2)) (lambda (x y) (> (length x) (length y))))