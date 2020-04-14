;; Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum

#lang racket

(define (sum-of-square n)
  (foldr + 0 (map (lambda (n) (expt n 2)) (range 1 (+ 1 n)))))

(define (square-of-sum n)
  (expt (foldr + 0 (range 1 (+ n 1))) 2))

(- (square-of-sum 1000) (sum-of-square 1000))