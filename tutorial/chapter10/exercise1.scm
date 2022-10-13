(define (make-bank-account balance)
    (lambda (n)
        (if (< 0 (+ balance n))
            (begin
                (set! balance (+ balance n)) 
                balance
            )
            "No change"
        )
    )
)

(define gates-bank-account (make-bank-account 10))

(gates-bank-account 50)
(gates-bank-account -55)
(gates-bank-account -15)