;; Find the sum of all the multiples of 3 or 5 below 1000

#lang racket

(define (multiple-of-5-or-3 n)
  (or (= (remainder n 3) 0)
      (= (remainder n 5) 0)))

(foldr + 0 (filter multiple-of-5-or-3 (range 1000)))