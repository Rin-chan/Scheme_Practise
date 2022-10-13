; Question 1.1
(define reverseList
    (lambda (ls)
        (do (
                (ls1 ls (cdr ls1)) 
                (ls2 () (cons (car ls1) ls2))
            )
            ((null? ls1) ls2)
        )
    )
)

(reverseList (list 6 2 3 5 2 4))


; Question 1.2
(define sumList
    (lambda (ls)
        (do (
                (ls1 ls (cdr ls1))
                (sum 0 (+ sum (car ls1)))
            )
            ((null? ls1) sum)
        )
    )
)

(sumList (list 6 2 3))


; Question 1.3
(define convertStrToInt
    (lambda (string)
        (do (
                (ls (string->list string) (cdr ls))
                (newInt 0 (+ (* 10 newInt) (- 48 (char->integer (car ls)))))
            )
            ((null? ls) (- newInt))
        )
    )
)

(convertStrToInt "1232")