#lang simply-scheme
;https://web.mit.edu/6.001/6.037/sicp.pdf#page=146

(define (make-rat num denom)
    (if (< denom 0) (make-rat (- 0 num) (abs denom)) (list num denom)))

(make-rat 20 (- 0 5)) ;prints '(-20 5)
