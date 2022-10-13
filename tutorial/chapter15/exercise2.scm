(define-syntax decf
    (syntax-rules ()
        ((_ x) (begin (set! x (- x 1)) x))
        ((_ x i) (begin (set! x (- x i)) x))
    )
)

(let ((i 0) (j 0))
    (decf i)
    (decf j 3)
    (display (list 'i '= i))
    (newline)
    (display (list 'j '= j)))