#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=149

(define (make-line x1 y1 x2 y2)
    (list x1 y1 x2 y2))

(define (start-seg line)
    (list (car line) (caddr line)))

(define (end-seg line)
    (list (cadr line) (cdddr line)))

(define (get-x line)
    (list (car line) (caddr line)))

(define (get-y line)
    (list (cadr line) (cadddr line)))

(define (find-mid line)
    (list (/ (+ (car (get-x line)) (cadr (get-x line))) 2) (/ (+ (car (get-y line)) (cadr (get-y line))) 2)))
;

(define c (make-line 1 2 3 4))
(find-mid c) ;prints '(2 3)
