(define reverseList
    (lambda (curList returnList)
        (if (null? curList)
            returnList
            (reverseList (cdr curList) (cons (car curList) returnList))
        )
    )
)

(reverseList (list 1 2 3 4) '())
(reverseList (list 3 2 1) '())