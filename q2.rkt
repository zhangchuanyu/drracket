;zhangchuanyu 100988193 a1
;question 2
;a
(define (reciprocal x)
	(cond ((= x 0) #f)
	      (else     (/ 1 x))))

(display "(reciprocal 2)= ")(reciprocal 2)
(display "(reciprocal 0)= ")(reciprocal 0)
;b
(define (f x) (+ (* x 3)(/ 3 x)))
 (display "(f 3)= ")(f 3)
;c
(define (g x) (* x (/ 1 4)))
 (display "(g 4)= ")(g 4)
;d 	  
(define (h x y)
	(cond   ((> x y) (/ (f x) (g y)))
		((< x y) (/ (g x) (f y)))
                 (else (* (f (g y)) (/ 1 (+ 2 (f (g x))))))))
 (display "(h 3 4)= ")(h 3 4)
;e (h (* 2 2)(reciprocal (/ 1 4))) applicative order
(define (r x)
	(cond ((= x 0) (#f))
	      (else     (/ 1 x))))
;(h (* 2 2)(r (/ 1 4)))
;(h (4)(r 1/4))
;(h (4)(4))
;(f (g 4))*(/ 1 (+ 2 (f(g 4))))
;(f 1) * (/ 1 (+ 2 (f 1)))
;6 * (/ 1(+ 2(6)))
;6*(1/8)
;3/4
(display "(h (* 2 2)(reciprocal (/ 1 4)))")(h (* 2 2)(reciprocal (/ 1 4)))
;f (h (* 2 2)(reciprocal (/ 1 4))) normal order
;(h (* 2 2)(r (/ 1 4)))
;(* (f (g (r(/ 1 4)))) (/ 1 (+ 2 (f (g (* 2 2))))))
;(* (f (g (/ 1 (/ 1 4)))) (/ 1 (+ 2 (f (g (* 2 2))))))
;(* (f (* (/ 1 4) (/ 1 (/ 1 4)))) (/ 1 (+ 2 (f (* (/ 1 4) (* 2 2))))))
;(* (+ (* (* (/ 1 4) (/ 1 (/ 1 4))) 3))(/ 3 (* (/ 1 4) (/ 1 (/ 1 4)))) (/ 1 (+ 2 (+ (* (* (/ 1 4) (* 2 2) 3)(/ 3 (* (/ 1 4) (* 2 2))))))))
;6 * (/ 1(+ 2(6)))
;6*(1/8)
;3/4


