#lang simply-scheme

;Please see link
;https://web.mit.edu/6.001/6.037/sicp.pdf#page=87

(define (square x)
    (* x x))


(define (firstexp b n)
    (define (iter a b n)
        (cond ((= n 0) a)
              ((even? n) (iter a (square b) (/ n 2)))
               ((odd?  n) (iter (* a b) b (- n 1)))))
    (iter 1 b n))
        
            

(firstexp 2 9)
        
