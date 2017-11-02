#lang racket

;; Define procedure that takes 3 numbers as args and returns sum of the squartes of the two larger numbers
;; exercise 1.3
(define (func a b c)
  (cond ((and (< a b) (< a c)) (+ (* b b) (* c c)))
        ((and (< b a) (< b c)) (+ (* a a) (* c c)))
        ((and (< c a) (< c b)) (+ (* a a) (* b b)))))
