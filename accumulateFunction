#lang simply-scheme

;https://web.mit.edu/6.001/6.037/sicp.pdf#page=108
;iterative process only
; some help: https://paleyontology.com/AP_CS/accumulate.html

;i will write accumulate in terms of product to solve it

(define (accumulate op id term a next b)
    (if (> a b) id
        (op (term a) (accumulate op id term (next a) next b))))

(define (product a b)
    (accumulate * 1 (lambda(x)x) a (lambda(x)(+ x 1)) b))

(product 1 5)
