(define flyingDist ; Function
    (lambda (v a) ; Arguements in the function
        (let ((pi (* 4 (atan 1.0)))) ; Definition of Pi
            (let ((radian (* a (/ pi 180.0)))) ; Degree -> Radian
                (let ((vy (* v (sin radian))) (vx (* v (cos radian)))) ; Find vx and vy
                    (let ((t (/ (* 2.0 vy) 9.8))) ; Find value of t
                        (* vx t)
                    )
                )
            )
        )
    )

)

(flyingDist 40 30)

; Answer
(define (throw v a)
  (let ((r (/ (* 4 a (atan 1.0)) 180)))
    (/ (* 2 v v (cos r) (sin r)) 9.8)))