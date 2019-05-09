;zhangchuanyu 100988193 a1
;question 5 6
;5:
;(a)applicative-order

;(define (test x y)
;   (if (= x 0)
;      0
;      y))
	
;(test 0 (p))
;(a)applicative-order:
;this code will go infinitely and will never terminate.
;Because the applicative-order will evaluate 0 first, and then evaluate (p)
;since (p) is a infinite function which will call itself forever, so the whole function will never stop for the applicative-order

;(b) normal-order
;this code will return 0
;because in normal=order, it will evaluate 0 first
;so it gets (if (#t) 0 (p))
;then it will return 0

;6:
;Answer:
;the value of b determind the sign of the operation and result.
;compare b with zero to change the different sign.
;There is no changes for integer a and b;

;(a-b 2 0)
;(cond (( > 0 0) + ) ( ( = 0 0 ) - )
;(else *)
;(cond ((#f + ) ( ( = 0 0 ) - )
;(else *)
;(cond ((#f + ) (#t -)
;(#f *)
;(2-0)
;2

;(a-b 1 2)
;(cond (( > 2 0) + ) ( ( = 2 0 ) - ) (else *)
;(cond ((#t + ) (#t -) (#f *)
;(1+2)
;3

;(a-b 1 -2)
;(cond (( > -2 0) + ) ( ( = -2 0 ) - ) (else *)
;(cond ((#f + ) ( ( = 0 0 ) - ) (else *)
;(cond ((#f + ) (#f - ) (else *)
;(cond ((#f + ) (#f - ) (#t *)
;(1*(-2))
;-2