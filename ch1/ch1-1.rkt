#lang sicp
;; install sicp in package manager

;; exercise 1.1
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

;; exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; exercise 1.3
(define (func a b c)
  (cond ((and (< a b) (< a c)) (+ (* b b) (* c c)))
        ((and (< b a) (< b c)) (+ (* a a) (* c c)))
        ((and (< c a) (< c b)) (+ (* a a) (* b b)))))

;; exercise 1.4
;; a-plus-abs-b checks first checks if b is a positive number
;; depending on the value of b, it either provides a + or - operator
;; + and - operators are primitive procedures that are applied to a and b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

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

;; computing square roots
(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; exercise 1.6
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (new-sqrt-iter (improve guess x) x)))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

;; (new-sqrt) leads to some infinite loop that prevents the program from ending.
;; 

;; exercise 1.7

;; exercise 1.8