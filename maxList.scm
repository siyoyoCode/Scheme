#lang simply-scheme

;https://people.eecs.berkeley.edu/~bh/ssch17/lists.html
; do these:  17.1, 17.2, 17.3, 17.8--17.12, 17.14

;17.5

(define (max2 a b)
  (if (> b a) b a))

(define (max1 lyst)
    (define lyst2 (cdr (cdr lyst))) 
    (define lyst3 (cons (max2 (car lyst) (car (cdr lyst))) lyst2))
    (if (= (length lyst3) 1) lyst3 (max1 lyst3)))

(max1 '(1 2 3 4 5))

;car is first
;cdr is butfirst
