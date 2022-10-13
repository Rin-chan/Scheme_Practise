; Question 1
(map (lambda (x) (* x 2)) '(3 2 4))

; Question 1 Answer
(define (double ls)
    (map (lambda (x) (* x 2)) ls)
)


; Question 2
(map - '(5 3 8) '(3 5 1))

; Question 2 Answer
(define (sub ls1 ls2)
    (map - ls1 ls2)
)