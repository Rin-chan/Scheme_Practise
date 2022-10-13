; Question 1
(define allPos
    (lambda (a b c)
        (and 
            (positive? a)
            (positive? b)
            (positive? c)
            (* a b c))))

(allPos 1 2 3)
(allPos 1 2 -3)

; Question 2
(define oneNeg
    (lambda (a b c)
        (if (or 
                (negative? a)
                (negative? b)
                (negative? c))
            (* a b c)
            #f)))

(oneNeg 1 10 -1)
(oneNeg 5 2 1)