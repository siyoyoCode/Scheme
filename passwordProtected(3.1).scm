#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=332

(define (make-monit proc password)
    (define counter 0)
    (define (how-many-calls?)
        counter)
    (define (dispatch func pass)
        (cond ((not (eq? password pass)) (display "wrong password"))
              ((eq? func 'how-many-calls?) (how-many-calls?))
              (else (begin (set! counter (+ counter 1)) proc))))
    dispatch)

(define myacc (make-monit sqrt 'mypass))

((myacc sqrt 'mypass) 100)
((myacc sqrt 'notmypass) 25)



