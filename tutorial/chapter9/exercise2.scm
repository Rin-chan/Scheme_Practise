(define copyFile
    (lambda (file-name output-name)
        (let ((p (open-input-file file-name)) (o (open-output-file output-name)))
            (let loop((c (read-char p)))
                (if (eof-object? c)
                    (begin
                        (close-input-port p)
                        (close-output-port o)
                    )
                    (begin
                        (write-char c o)
                        (loop (read-char p))
                    )
                )
            )
        )
    )
)

(copyFile "hello.txt" "hello_copy.txt")

; Answer
(define (my-copy-file from to)
    (let ((pfr (open-input-file from)) (pto (open-output-file to)))
        (let loop((c (read-char pfr)))
            (if (eof-object? c)
                (begin
                    (close-input-port pfr)
                    (close-output-port pto))
                (begin
                    (write-char c pto)
                    (loop (read-char pfr)))
            )
        )
    )
)

(my-copy-file "hello.txt" "hello_copy2.txt")