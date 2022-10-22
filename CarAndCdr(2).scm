#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=153

(define (cons x y)
    (lambda (m) (m x y)))
(define (car z)
    (z (lambda (p q) p)))

(define (cdr z)
    (z (lambda (s r) r)))

;cdr version of first thing

;verification
(define b (cons 2 4))

(car b) ;prints 2 therefore it is correct
