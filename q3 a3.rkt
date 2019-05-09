

;Question 3a zhangchuanyu 100988193
(define (after L n)
  (if (= n 0)
      L
      (after (cdr L) (- n 1))))
(display "(after '(a b c d e f g h) 3) → (d e f g h):")
(after '(a b c d e f g h) 3)
(newline)
(display "(after '(a b c d e f g h) 0) → (a b c d e f g h):")
(after '(a b c d e f g h) 0)

;Question 3b
(define (thecons list1 list2)
    (if (null? list1)
        list2
        (cons (car list1)
              (append (cdr list1) list2))))

(define (splice L i A)
 (if (= i 0)
     (thecons A L)
     (cons (car L) (splice (cdr L) (- i 1) A))))

(display"(splice '(1 2 3 4 5) 2 '(a b c)) → (1 2 a b c 3 4 5):")
(splice '(1 2 3 4 5) 2 '(a b c))
(newline)
(display"(splice '(1 2 3 4 5) 0 '(a b c)) → (a b c 1 2 3 4 5):")
(splice '(1 2 3 4 5) 0 '(a b c))


