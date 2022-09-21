#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=108

(define (next2 z)
    (+ 1 z))

(define (term x)
    (* 1 x))

(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ result (term a)))))
    (iter a 0))

(sum term 2 next2 7)
