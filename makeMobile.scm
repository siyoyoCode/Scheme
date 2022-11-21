#lang simply-scheme

; https://web.mit.edu/6.001/6.037/sicp.pdf#page=179

; Here is a test mobile so we can have a sample input to the
; programs, below.  Note that we must adhere to the abstractions.

(define (make-mobile left right)
    (cons left right))

(define (make-branch length structure) ;length of branch + bottom of branch
    (cons length structure))

(define (left-branch mobile) ; gives branches hanging off mobile
    (car mobile))

(define (right-branch mobile) ;same
    (cdr mobile))

(define (branch-length branch) ;length of branch
    (car branch))

(define (branch-structure branch) ;whats hanging off branch
    (cdr branch))


;total weight
(define (branch-weight branch)
    (if (number? (branch-structure branch)) (branch-structure branch) (total-weight (branch-structure branch)))) ;else add length of branch to branch weight of the hanging structure

(define m (make-mobile (make-branch 6 (make-mobile (make-branch 1 8) (make-branch 4 2))) (make-branch 5 12)))

(left-branch m)
(right-branch m)


(define (total-weight tree) 
    (+ (branch-weight (left-branch tree)) (branch-weight (right-branch tree))))

(total-weight m)

;balanced?
(define (weight? branch)
    (if (number? (branch-structure branch) #t #f)))


(define (branch-product branch)
    (if (number? (branch-sturcture branch)) (* (branch-length branch) (branch-structure branch)))


(define (balanced? mobile)
    (if (weight? (right-branch mobile))))

