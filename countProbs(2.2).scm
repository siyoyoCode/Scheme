#lang simply-scheme

(define count1 
    (lambda() 
        (let ((counter 0))
            (set! counter (+ counter 1))
            counter))) ;count1 just returns one everytime

(count1)

(define count2 
    (let ((counter 0))
        (lambda() 
            (set! counter (+ counter 1))
            counter))) ;count2 increases it's count everytime it's called

(count2)
(count2)

(define count3
    (lambda() 
        (let ((result 0))
            (lambda () 
                (set! result (+ result 1))
                result))))


