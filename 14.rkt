;; Based on the Collatz sequence. Which starting number, under one million, produces the longest chain?

#lang racket

(define (collatz n)
  (cond
    [(= n 1) 1]
    [(even? n) (/ n 2)]
    [(odd? n) (+ 1 (* 3 n))]))

(define (collatz-seq n [acc 0])
  (if (= n 1)
      acc
      (collatz-seq (collatz n) (add1 acc))))

; TODO: Fix this function. It hangs
(define (find-greatest-collatz-seq end)
  (let* ([max-number 0] [max-length 0])
    (for ([i end])
      (let ([len (length (collatz-seq i))])
        (when (> len max-length)
            (and (set! max-number i)
                 (set! max-length len)))))))
