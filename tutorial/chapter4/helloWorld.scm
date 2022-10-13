; Define is used to create variables
; Hello world as a variable
(define vhello "Hello world")
; Hello world as a function
(define fhello 
    (lambda () 
        "Hello world"))

; Variables set inside lambda () is an arguement
; hello with name
(define hello
  (lambda (name)
    (string-append "Hello " name "!")))
; sum of three numbers
(define sum3
  (lambda (a b c)
    (+ a b c)))

; Short form can be used (Without lambda)
; hello with name
(define (helloL name)
  (string-append "Hello " name "!"))
; sum of three numbers
(define (sum3L a b c)
  (+ a b c))

vhello
(fhello)
(hello "Rin")
(sum3 10 20 30)
(helloL "Rin")
(sum3L 10 20 30)