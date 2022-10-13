;; Unbound variable: keep-matching-items
;; Currently using MIT/GNU Scheme 11.2

; Question 1
(keep-matching-items '(3 2 5 1 4 2 10) even?)

; Question 1 Answer
(define (filter-even ls)
    (keep-matching-items ls even?)
)

; Question 2
(keep-matching-items '(3 22 5 31 4 21 10) (lambda (x) (<= 10 x 100)))

; Question 2 Answer
(define (filter-10-100 ls)
    (keep-matching-items ls (lambda (x) (<= 10 x 100)))
)