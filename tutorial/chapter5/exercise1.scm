; Question 1
(define abs
    (lambda (number)
        (if (< number 0)
            (- 0 number)
            number)))

(abs -1)

; Question 2
(define reciprocal
    (lambda (number)
        (if (not (zero? number))
            (/ number)
            #f)))

(reciprocal 10)

; Question 3
(define convertIntToGrap
    (lambda (int)
        (if (<= 33 int 126)
            (integer->char int)
            #f)))

(convertIntToGrap 65)
(convertIntToGrap 8)