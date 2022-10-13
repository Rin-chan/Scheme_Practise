; Question 1.1
(define removeFromList
    (lambda (ls x)
        (let loop((retls '()) (ls1 ls))
            (if (null? ls1)
                (reverse retls)
                (if (eqv? (car ls1) x)
                    (loop retls (cdr ls1))
                    (loop (cons (car ls1) retls) (cdr ls1))
                )
            )
        )
    )
)

(removeFromList (list 1 3 2 5 2) 2)


; Question 1.2
(define firstPos
    (lambda (ls x)
        (let loop((pos 0) (ls1 ls))
            (if (eqv? (car ls1) x)
                pos
                (loop (+ 1 pos) (cdr ls1))
            )
        )
    )
)

(firstPos (list 1 3 6 2 5 2) 2)


; Question 2.1
(define reverseList
    (lambda (ls)
        (let loop((revls '()) (ls1 ls))
            (if (null? ls1)
                revls
                (loop (cons (car ls1) revls) (cdr ls1))
            )
        )
    )
)

(reverseList (list 6 2 3 5 2 4))


; Question 2.2
(define sumList
    (lambda (ls)
        (let loop((sum 0) (ls1 ls))
            (if (null? ls1)
                sum
                (loop (+ sum (car ls1)) (cdr ls1))
            )
        )
    )
)

(sumList (list 6 2 3))


; Question 2.3
(define convertStrToInt
    (lambda (string)
        (let loop((ls (string->list string)) (newInt 0))
            (if (null? ls)
                (- newInt)
                (loop (cdr ls) (+ (* 10 newInt)
                                    (- 48 (char->integer (car ls)))
                                )
                )
            )
        )
    )
)

(convertStrToInt "1232")

; Question 2.3 Answer
(define (my-string->integer-let str)
  (let loop((ls0 (string->list str)) (n 0))
    (if (null? ls0)
	n
	(loop (cdr ls0)
	      (+ (- (char->integer (car ls0)) 48)
		 (* n 10))))))

(my-string->integer-let "1232")


; Question 3
(define range
    (lambda (n)
        (let loop((ls '()) (curNum 0))
            (if (= curNum n)
                (reverse ls)
                (loop (cons curNum ls) (+ 1 curNum))
            )
        )
    )
)

(range 3)