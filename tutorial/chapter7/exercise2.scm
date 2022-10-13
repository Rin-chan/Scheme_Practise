; Question 1
(define reverseList
    (lambda (ls)
        (reverseList-rec ls '())
    )
)


(define reverseList-rec
    (lambda (ls revls)
        (if (null? ls)
            revls
            (reverseList-rec (cdr ls) (cons (car ls) revls))
        )
    )
)

(reverseList (list 6 2 3 5 2 4))

; Question 1 Answer

(define (my-reverse ls)
  (my-reverse-rec ls ()))

(define (my-reverse-rec ls0 ls1)
  (if (null? ls0)
      ls1
      (my-reverse-rec (cdr ls0) (cons (car ls0) ls1))))

(my-reverse (list 6 2 3 5 2 4))


; Question 2

(define sumList
    (lambda (ls)
        (sumList-rec ls 0)
    )
)

(define sumList-rec
    (lambda (ls count)
        (if (null? ls)
            count
            (sumList-rec (cdr ls) (+ count (car ls)))
        )
    )
)

(sumList (list 6 2 3))


; Question 3
(define convertStrToInt
    (lambda (string)
        (convertStrToInt-rec (string->list string) 0)
    )
)

(define convertStrToInt-rec
    (lambda (ls number)
        (if (null? ls)
            number
            (convertStrToInt-rec (cdr ls) (+ (* 10 number) (- (char->integer (car ls)) 48)))
        )
    )
)

(convertStrToInt "1232")