(define (fact-letrec n)
    (letrec 
        ((iter 
            (lambda (n1 p)
                (if (= n1 1)
                    p
                    (let ((m (- n1 1)))
                        (iter m (* p m))
                    )
                )
            )
        ))
        (iter n n)
    )
)


; Question 1.1
(define reverseList
    (lambda (ls)
        (letrec
            ((rev
                (lambda (ls1 ls2)
                    (if (null? ls2)
                        ls1
                        (rev (cons (car ls2) ls1) (cdr ls2))
                    )
                )
            ))
            (rev '() ls)
        )
    )
)

(reverseList (list 6 2 3 5 2 4))


; Question 1.2
(define sumList
    (lambda (ls)
        (letrec
            ((sum
                (lambda (total ls1)
                    (if (null? ls1)
                        total
                        (sum (+ total (car ls1)) (cdr ls1))
                    )
                )
            ))
            (sum 0 ls)
        )
    )
)

(sumList (list 6 2 3))


; Question 1.3
(define convertStrToInt
    (lambda (string)
        (letrec
            ((convert
                (lambda (ls newInt)
                    (if (null? ls)
                        (- newInt)
                        (convert (cdr ls) (+ (* 10 newInt) (- 48 (char->integer (car ls)))))
                    )
                )
            ))
            (convert (string->list string) 0)
        )
    )
)

(convertStrToInt "1232")