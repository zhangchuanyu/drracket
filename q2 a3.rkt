;Question 2a zhangchuanyu 100988193
(define (special-cons x y)
		(lambda (m) (m x y)))

(define (special-car n)
  (n (lambda (x y) x)))

(define (special-cdr n)
  (n (lambda (x y) y)))



(define specialcons (special-cons 1 2))
(display "(special-car (special-cons 1 2))")
(newline)

(special-car specialcons)
(display "(special-cdr (special-cons 1 2))")
(newline)

(special-cdr specialcons)
;2b
(define (triple x y z)(lambda (b)(b x y z)))
(define a (triple 1 2 3))
(define (first a)(a (lambda (z c y) z)))
(define (second a)(a (lambda (z c y) c)))
(define (third a)(a (lambda (z c y) y)))
(display "question 2 b")
(newline)
(display "first of a:")
(first a)
(display "second of a:")
(second a)
(display "third of a:")
(third a)