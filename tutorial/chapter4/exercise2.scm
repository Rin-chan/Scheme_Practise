; Question 1
(define pi (* 4 (atan 1.0)))
(define convertDtoR
    (lambda (number)
        (* (/ number 180) pi)))

(convertDtoR 180)

; Question 2
(define movingDist
    (lambda (velocity speed)
        (* velocity speed)))

(movingDist 10 2)

; Question 3
(define timeTaken
    (lambda (distance)
        (/ (* distance 2) 9.8))) ; Assuming gravity is 9.8m/s

(timeTaken 10)