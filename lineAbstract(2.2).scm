#lang simply-scheme

;Part 1:  Points

;A) Write the constructor and selectors for a point abstraction. A point takes is constructed from an x and y coordinate. 

(define (make-point x y)
    (cons x y))

(define (get-x p)
    (car p))

(define (get-y p)
    (cdr p))

;B) Define the points A (2, 2) and B (3, 5).  Use these to check your math for later problems. 

(define a (make-point 2 2))
(define b (make-point 3 5))

;C) Write the following method for points. Forgot the distance formula?  Use Google!

(define (square x)
    (* x x))

(define (distance p1 p2)
    (sqrt (+ (square (abs (- (get-x p1) (get-x p2)))) (square (abs (- (get-y p1) (get-y p2)))))))

;Part 2: Lines
;A) Write the constructor and selectors for a line.  A line takes is constructed from two points.
(define (make-line p1 p2)
  
;B)Write the following methods for lines:

;returns the slope of a line
(define (slope line)

;returns the y-intercept of a line (might need to do some math here)
(define (y-intercept line)

;determines if two lines are parallel
(define (parallel? line1 line2)

;determines if two lines are perpendicular
(define (perpendicular? line1 line2)

;displays a line in slope-intercept form
(define (slope-intercept-form line)
