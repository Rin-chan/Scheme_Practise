(define (my-read-lines file-name)
    (let ((p (open-input-file file-name)))
        (let loop((ls1 '()) (c (read-char p)))
            (if (eof-object? c)
                (begin
                    (close-input-port p)
                    (let loop2((ls2 (reverse ls1)) (temList '()) (ans '()))
                        (if (null? ls2)
                            (reverse (cons (list->string (reverse temList)) ans))
                            (if (eqv? (car ls2) #\Linefeed)
                                (loop2 (cdr ls2) '() (cons (list->string (reverse temList)) ans))
                                (loop2 (cdr ls2) (cons (car ls2) temList) ans)
                            )
                        )
                    )
                )
                (loop (cons c ls1) (read-char p))
            )
        )
    )
)

(my-read-lines "hello.txt")

; Answer
(define (group-list ls sep)
    (letrec 
        ((iter 
            (lambda (ls0 ls1)
                (cond
                    ((null? ls0) (list ls1))
                    ((eqv? (car ls0) sep) 
                        (cons ls1 (iter (cdr ls0) '())))
                    (else (iter (cdr ls0) (cons (car ls0) ls1)))
                )
            )
        ))
        (map reverse (iter ls '()))
    )
)


(define (read-lines file-name)
    (with-input-from-file file-name
        (lambda ()
            (let loop((ls1 '()) (c (read-char)))
                (if (eof-object? c)
                    (map list->string (group-list (reverse ls1) #\Linefeed))
                    (loop (cons c ls1) (read-char))
                )
            )
        )
    )
)

(read-lines "hello.txt")