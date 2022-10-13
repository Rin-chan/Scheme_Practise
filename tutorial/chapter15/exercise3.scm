(define-syntax when
    (syntax-rules ()
        (
            (_ pred b1 ...)
            (if pred (begin b1 ...))
        )
    )
)

(define-syntax for
    (syntax-rules ()
        (
            (_ (i from to) b1 ...)
            (let loop((i from))
                (when (< i to)
                    b1 ...
                    (loop (1+ i))
                )
            )
        )
        (
            (_ (i from) b1 ...)
            (let loop((i from))
                (when (< i 1)
                    b1 ...
                    (loop (1+ i))
                )
            )
        )
    )
)

(for (i 0)
    (display i)
    (display #\Space)
)