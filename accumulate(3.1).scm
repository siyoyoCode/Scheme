#lang simply-scheme
;https://web.mit.edu/6.001/6.037/sicp.pdf#page=331

(define (make-acc sum)
    (define (dispatch num)
        (set! sum (+ sum num)) 
        sum)
    dispatch)

(define A (make-acc 5))

(A 10)
(A 25)

(define B (make-acc 34))

(B 23)
