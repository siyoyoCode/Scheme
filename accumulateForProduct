#lang simply-scheme

; https://web.mit.edu/6.001/6.037/sicp.pdf#page=108
; hint: https://paleyontology.com/AP_CS/1.31hint.html

(define (1+ x)
    (+ 1 x))

(define (product a next b)
    (define (inter-prod a result)
        (if (> a b) 
            result
            (inter-prod (next a) (* result a))))
    (inter-prod a 1))

(product 3 1+ 5)
