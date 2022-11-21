#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=177
;SICP 2.24 - 2.27

;2.24 
;'(1 (2 (3 4))) my prediciton
(list 1 (list 2 (list 3 4))) ;actuality : '(1 (2 (3 4)))

;2.25
(cdaddr '(1 3 (5 7) 9)) ;prints '(7)
(car '((7))) ;prints '(7)
(cdadar (cdadar (cdadr '(1 (2 (3 (4 (5 (6 7))))))))) ;print '(7)

;2.26
(define x (list 1 2 3))
(define y (list 4 5 6))

;error (wrong) '(1 2 3 4 5 6)
(append x y)

;'(1 2 3 . (4 5 6)) (wrong) '((1 2 3) 4 5 6)
(cons x y)

;((1 2 3) (4 5 6)) (RIGHT!!!)
(list x y)

;2.27

(define (revers z)
    (define (iter lyst result)
        (cond ((null? lyst) result)
              ((pair? (car lyst)) (cons (iter (car lyst) '()) result)) 
        (iter (cdr lyst) (cons (car lyst) result))))
    (iter z '()))

(revers '(1 2 3 (4 5) 6))
