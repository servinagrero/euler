;; Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

#lang racket

(require "helpers.rkt")

(define result
  (foldr + 0 (map (lambda (x) (expt x x)) (range 1 1001))))

(digits->number (take-right (number->digits result) 10))
