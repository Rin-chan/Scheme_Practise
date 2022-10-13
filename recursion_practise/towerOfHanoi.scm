(define num_discs 3)
(define from_peg 1)
(define to_peg 3)
(define temp_peg 2)

(define move_discs
    (lambda (num from_peg to_peg temp_peg)
        (let loop((num num) (from_peg from_peg) (to_peg to_peg) (temp_peg temp_peg) (ls '()))
            (if (> num 0)
                (begin
                    (loop (- num 1) from_peg temp_peg to_peg ls)
                    (loop (- num 1) temp_peg to_peg from_peg (cons (list "Move a disc from peg" from_peg "to peg" temp_peg) ls))
                )
                ls
            )
        )
    )
)

(move_discs num_discs from_peg to_peg temp_peg)
(list "All the pegs are moved")