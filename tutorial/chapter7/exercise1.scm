; Question 1
(define countLength
    (lambda (ls length)
        (if (null? ls)
            length
            (countLength (cdr ls) (+ length 1))
        )
    )
)

(countLength (list 1 3 5 2) 0)

; Answer for Q1
(define (my-length ls)
  (if (null? ls)
      0
      (+ 1 (my-length (cdr ls)))))

(my-length (list 1 3 5 2))


; Question 2
(define sumList
    (lambda (ls sum)
        (if (null? ls)
            sum
            (sumList (cdr ls) (+ sum (car ls)))
        )
    )
)

(sumList (list 1 3 5 2) 0)

; Answer for Q2
(define (my-sum ls)
    (if (null? ls)
        0
        (+ (car ls) (my-sum (cdr ls)))
    )
)

(my-sum (list 1 3 5 2))


; Question 3
(define removeFromList
    (lambda (ls x)
        (if (null? ls)
            '()
            (if (eqv? (car ls) x)
                (removeFromList (cdr ls) x)
                (cons (car ls) (removeFromList (cdr ls) x))
            )
        )
    )
)

(removeFromList (list 1 3 2 5 2) 2)

; Question 3 Answer
(define (remove x ls)
    (if (null? ls)
        '()
        (let ((h (car ls)))
            ((if (eqv? x h)
                (lambda (y) y)
                (lambda (y) (cons h y))
            )
            (remove x (cdr ls))
            )
        )
    )
)

(remove 2 (list 1 3 2 5 2))


; Question 4
(define firstPos
    (lambda (ls x)
        (if (null? ls)
            #f
            (if (eqv? (car ls) x)
                0 ; Start counting from 0
                (+ 1 (firstPos (cdr ls) x))
            )
        )
    )
)

(firstPos (list 1 3 6 2 5 2) 2)