;zhangchuanyu 100988193 a1
;question 4
;a:
(define (fib n)
    (cond  ((= n 0) 0)
           ((= n 1) 1)
           (else (+ (fib (- n 1))
                    (fib (- n 2))))))
(define (fib n)
    (- (* (/ 1 (sqrt 5)) (expt (/ (+ 1 (sqrt 5)) 2) n))  (* (/ 1 (sqrt 5)) (expt (/ (- 1 (sqrt 5)) 2) n))))

;b:
(define (fibrec n)
    (define (fib-iteration n1 n2 count)
        (if (= count n)
            n1
            (fib-iteration (+ n1 n2) n1 (+ count 1))))
    
    (if (<= n 1) n
        (fib-iteration 1 0 1)))

;c
(define (testfib x y)
  (if (> (abs(- (fibrec x) (fib x))) y)
      #f
      #t))

(display "the output are")
(newline)
(testfib 40 0.000000001)
(fib 40)
(fibrec 40)
(testfib 15 0)
(fib 15)
(fibrec 15)
(testfib 20 0)
(fib 20)
(fibrec 20)