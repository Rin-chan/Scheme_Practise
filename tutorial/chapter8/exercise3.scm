; Question 1
(define func
    (lambda (ls)
        (sqrt (reduce + 0 (map (lambda (x) (* x x)) ls)))
    )
)

(func (list 8 2 3 5 1))