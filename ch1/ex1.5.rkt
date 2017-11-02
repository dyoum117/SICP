#lang racket
;; exercise 1.5
;; Seems that (test 0 (p)) will not break from an infinite loop
;; Struggled with this one, so I had to use some outside resources to understand it
;;
;; applicative order: 
;; normal order: 
;; reference: 
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0 y))