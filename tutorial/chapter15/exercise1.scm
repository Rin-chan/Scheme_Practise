(define-syntax unless
    (syntax-rules ()
        (
            (_ pred b1 ...)
            (if (not pred) (begin b1 ...))
        )
    )
)

(let ((i 1))
    (unless (= i 0)
        (display "i != 0")
        (newline)
    )
)