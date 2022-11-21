#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=167

;#17
(define (last-pair  z)
    (if (null? (cdr z)) 
        z 
        (last-pair (cdr z))))
  
(last-pair '(2 3 4 6 9 12)) ;returns 12!!!!

;#18
(define a '(1 2 3 4))

(define (revers z)
    (define (iter lyst result)
        (if (null? lyst) result 
        (iter (cdr lyst) (cons (car lyst) result))))
    (iter z '()))

(revers '(1 2 3 4 5))
    
