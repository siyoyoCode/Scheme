#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=172

;2.21
(define (square x) (* x x))

(define (square-list items)
    (if (null? items) '() 
        (cons (square (car items)) (square-list (cdr items)))))

(define (square-list2 items)
    (map square items))

(square-list '(1 2 3 4 5)) ;prints '(1 4 9 16 25)
(square-list2 '(15 16 17)) ;prints '(225 256 289)

;2.22
;for this one, the list is printed in correct order but there are many dots marring the way, creating multiple lists in the single one. all you have to do is list, car, list, append to get rid of the dots

;2.23
(for-each (lambda(x) (display (square x)) (newline)) '(1 2 3 4 5))
