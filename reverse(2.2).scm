#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=167

;reverse function

(define (revers z)
    (define (iter lyst result)
        (if (null? lyst) result 
        (iter (cdr lyst) (cons (car lyst) result))))
    (iter z '()))

(define (same-parity x . y)
    (define (iter y result)
        (cond ((null? y) result)
              ((= (remainder (car y) 2) (remainder x 2)) (iter (cdr y) (cons (car y) result)))
              (else (iter (cdr y) result))))
    (revers (iter y (list x))))
    
(same-parity 1 2 3 4 5) ;prints '(1 3 5)
(same-parity 2 4 5 8 10) ;printss '(2 4 8 10)

        
    
