#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=156

(define (make-interval a b) (cons a b))

(define (up-bound int)
    (if (> (car int) (cdr int)) (car int) (cdr int)))

(define (low-bound int)
    (if (> (car int) (cdr int)) (cdr int) (car int)))

(low-bound (make-interval 2 8))
(up-bound (make-interval 12 43))

(define (sub-interval int1 int2)
    (abs (- (- (up-bound int1) (low-bound int1)) (- (up-bound int2) (low-bound int2)))))

(sub-interval (make-interval 2 4) (make-interval 6 9)) ;prints 1

(define (width int)
    (/ (- (up-bound int) (low-bound int)) 2))

(abs (* 2 (- (width (make-interval 2 4)) (width  (make-interval 6 9))))) ;should print 1

;ended up printing 1 ^^
