;zhangchuanyu 100988193 a1
;question 3
(define (square x)(* x x))

  (define (sqrt x)
  
    (define (square x)(* x x))

    (define (average x y)
       (/ (+ x y) 2))
  
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.000001))
    
    (define (improve guess)
        (average guess ( / x guess)))

    (define (sqrt-iteration guess)
        (if (good-enough? guess)
            guess
            (sqrt-iteration (improve guess))))
    
	(sqrt-iteration 1.0))
(define (q a b c)
  ;(define (caculate a b c) ( / (- (sqrt (- (square b) (* 4 (* a c)))) b) (* 2 a)))
;  (define (rootpart a b c) (- (square b) (* 4 (* a c))))
    (cond ((> (- (square b) (* 4 (* a c))) 0)
        ( / (- (sqrt (- (square b) (* 4 (* a c)))) b) (* 2 a)))
         (else (#f))))
(q 1 4 2)