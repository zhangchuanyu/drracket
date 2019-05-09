;q5 zhangchuanyu 100988193
;a i
(define (first str n)
  (cond((= n 0) empty-stream)
      (else(cons(head str) (first (tail str) (- n 1))))))

(define (filter-stream p lis)
  (cond ((stream-null? lis) empty-stream)
        ((p (head lis)) (cons-stream (head lis) (filter-stream p (tail lis))))
        (else (filter-stream p (tail lis)))))
;a ii
(define (list->stream li)
            (cond (stream-null? li)
                 (empty-stream)
                (cons-stream (car li)
                      (list->stream (cdr li)))))