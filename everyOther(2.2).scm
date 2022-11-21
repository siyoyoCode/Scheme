#lang simply-scheme

;You can use this as a racket scratchpad for midterm practice problems



(define (every-o x . y)
    (define (helper lyst result)
      (cond ((or (null? lyst) (null? (cdr lyst))) result)
            (else (helper (cddr lyst) (append result (list (car lyst)))))))
    (helper (cdr y) (list x)))

(every-o 2 3 4 5)
