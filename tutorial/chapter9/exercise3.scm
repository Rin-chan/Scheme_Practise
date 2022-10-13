(define readLines
    (lambda lines
        (let loop((ls0 lines))
        (if (pair? ls0)
            (begin
                (display (car ls0))
                (newline)
                (loop (cdr ls0))
            )
        )
    )
    )
)

(readLines "Hello" "I" "Am" "Rin")

; Answer
(define (print-lines . lines)
    (let loop((ls0 lines))
        (if (pair? ls0)
            (begin
                (display (car ls0))
                (newline)
                (loop (cdr ls0))
            )
        )
    )
)

(print-lines "Hello" "I" "Am" "Rin")