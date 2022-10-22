#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=156

(define (make-interval a b) (cons a b))

(define (up-bound int)
    (if (> (car int) (cdr int)) (car int) (cdr int)))

(define (low-bound int)
    (if (> (car int) (cdr int)) (cdr int) (car int)))

(low-bound (make-interval 2 8)) ;prints 2
(up-bound (make-interval 12 43)) ;prints 43
