;; What is the sum of the digits of the number 2^1000

#lang racket

(require "helpers.rkt")

(foldr + 0 (number->digits (expt 2 1000)))
