#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=332

(define (make-monit proc)
    (define counter 0)
    (define (how-many-calls?)
        counter)
    (define (dispatch m)
        (if (not (eq? m 'how-many-calls?)) 
            (begin (set! counter (+ counter 1)) 
                   (proc m))
            (how-many-calls?)))
    dispatch)

(define S (make-monit sqrt))

(S 100)
(S 25)
(S 36)

(S 'how-many-calls?) ;prints 3  
