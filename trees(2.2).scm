#lang simply-scheme

;2.30, 2.31, 2.32
;https://web.mit.edu/6.001/6.037/sicp.pdf#page=181

;2:30
(define (square x)
    (* x x))

(define (square-tree2 tree)
    (map (lambda(x) (if (not (pair? x)) (square x) (square-tree2 x))) tree))

(define tree '(1 2 (3 (4)) 5))

(square-tree2 tree) ;(1 4 (9 (16)) 25))

;2.33 
;https://web.mit.edu/6.001/6.037/sicp.pdf#page=189

(define tree '(1 4 9 16))

(map sqrt tree)

(lambda(x)())
;2.35 (yes skip 2.34)
;https://web.mit.edu/6.001/6.037/sicp.pdf#page=191





