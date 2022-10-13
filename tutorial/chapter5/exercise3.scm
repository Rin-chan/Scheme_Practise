; Question 1
(define grade
    (lambda (score)
        (cond
            ((>= score 80) "A")
            ((>= score 60) "B")
            ((>= score 40) "C")
            (else "D"))))

(grade 10)
(grade 50)
(grade 70)
(grade 90)