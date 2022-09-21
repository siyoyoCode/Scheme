#lang simply-scheme

; See link for problem: 
; https://web.mit.edu/6.001/6.037/sicp.pdf#page=61


(define (cube-new x)
    (define (square x)
        (* x x))
    (define (cube x)
        (* x x x))
    (define (average a b)
        (/ (+ a b) 2.0))
    (define (improve guess)
        (/ (+ (/ x (square guess)) (* 2 guess)) 3))
    (define (good-enough? guess)
        (< (abs (- (cube guess) x)) 0.0001))
    (define (sqrt-iter guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))
    (sqrt-iter 1.0))

(cube-new 27)

