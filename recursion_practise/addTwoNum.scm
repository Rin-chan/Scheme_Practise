; You are given two non-empty linked lists representing two non-negative integers.
; The digits are stored in reverse order, and each of their nodes contains a single digit.
; Add the two numbers and return the sum as a linked list.
; You may assume the two numbers do not contain any leading zero, except the number 0 itself.

(define (compose f g) 
    (lambda (x) 
        (f (g x))
    )
)

(define convertToNum
    (lambda (ls)
        (let loop ((ls1 (reverse ls)) (num1 ""))
            (if (null? ls1)
                (string->number num1)
                (loop (cdr ls1) (string-append num1 (number->string (car ls1))))
            )
        )
    )
)

(define addTwo
    (lambda (ls1 ls2)
        (reverse
            (map (compose string->number string)
                (string->list (number->string (+ (convertToNum ls1) (convertToNum ls2))))
            )
        )
    )
)

(addTwo (list 2 4 3) (list 5 6 4))
(addTwo (list 0) (list 0))
(addTwo (list 9 9 9 9 9 9 9) (list 9 9 9 9))