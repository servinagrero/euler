;;; Multiple functions used to solve the problems

#lang racket

(provide digits->number
         number->digits
         palindrome?)

(define (number->digits n)
  (if (< n 10)
      (list n)
      (cons (remainder n 10) (number->digits (quotient n 10)))))

(define (digits->number digits)
  (if (empty? digits)
      0
      (+ (* (car digits) (expt 10 (sub1 (length digits))))
         (digits->number (cdr digits)))))

(define (palindrome? n)
  (let ([digits (number->digits n)])
    (equal? digits (reverse digits))))
