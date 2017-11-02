#lang racket
;; exercise 1.4
;; a-plus-abs-b checks first checks if b is a positive number
;; depending on the value of b, it either provides a + or - operator
;; + and - operators are primitive procedures that are applied to a and b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
