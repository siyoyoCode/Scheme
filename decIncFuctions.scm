#lang simply-scheme

;see link
;https://web.mit.edu/6.001/6.037/sicp.pdf#page=74

(define (inc x)
    (+ x 1))

(define (dec y)
    (- y 1))

(define (plus a b)
  (if (= a 0)
      b
      (plus (dec a) (inc b))))

(plus 4 5)

;(plus 4 5)
;(plus (dec 4) (inc 5))
;(plus (dec 3) (inc 6))
;(plus (dec 2) (inc 7))
;(plus (dec 1) (inc 8))
;(plus 0 9)
;9
