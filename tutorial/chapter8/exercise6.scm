; Question 1
(define match
    (lambda (ls value)
        (let loop((ls1 ls) (ls2 '()))
            (if (null? ls1)
                (reverse ls2)
                (if (value (car ls1))
                    (loop (cdr ls1) (cons (car ls1) ls2))
                    (loop (cdr ls1) ls2)
                )
            )
        )
    )
)

(match '(3 2 5 1 4 2 10) even?)
(match '(3 22 5 31 4 21 10) (lambda (x) (<= 10 x 100)))


; Question 2 Answer
(define (my-map fun . lss)
    (letrec 
        (
            (iter 
                (lambda (fun lss)
                    (if (null? lss)
                        '()
                        (cons (fun (car lss))
                            (iter fun (cdr lss))
                        )
                    )
                )
            )
            (map-rec 
                (lambda (fun lss)
                    (if (memq '() lss)
                        '()
                        (cons (apply fun (iter car lss))
                            (map-rec fun (iter cdr lss))
                        )
                    )
                )
            )
        )
        (map-rec fun lss)
    )
)

(my-map (lambda (x) (* x 2)) '(3 2 4))
(my-map - '(5 3 8) '(3 5 1))
(my-map + '(1 2 3) '(10 20 30) '(100 200 300))