#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=150

(define (make-point x y)
    (cons x y))

(define (make-rect d1 d2)
    (cons d1 d2))

(define (get-x point)
    (car point))

(define (get-y point)
    (cdr point))

(define (rect-cord-1 rect) 
    (car rect))

(define (rect-cord-2 rect)
    (cdr rect))

(define (x-length rect)
    (abs (- (get-x (rect-cord-1 rect)) (get-x (rect-cord-2 rect)))))

(define (y-length rect)
    (abs (- (get-y (rect-cord-1 rect)) (get-y (rect-cord-2 rect)))))

(define (perimeter rect)
    (* 2 (+ (x-length rect) (y-length rect))))

(define p1 (make-point 1 2))
(define p2 (make-point 3 4))
(define rect (make-rect p1 p2))
(perimeter rect) ;prints 8


(define (make-rect point width hieght)
    (cons point width hieght))
