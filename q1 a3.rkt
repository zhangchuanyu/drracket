;zhangchuanyu 100988193
(define (make-interval a b)
  (list a b))
(define (takeCdr x)
  (car (cdr x)))

(define (add a b)
  (list (+ (car a) (car b)) (+ (takeCdr a) (takeCdr b))))

(define (subtract a b)
  (list (- (car a) (takeCdr b)) (- (takeCdr a) (car b))))

(define (multiply a b)
  (list (* (if (< (car a) (takeCdr a)) (car a) (takeCdr a))
           (if (< (car b) (takeCdr b)) (car b) (takeCdr b)))
        (* (if (> (car a) (takeCdr a)) (car a) (takeCdr a))
           (if (> (car b) (takeCdr b)) (car b) (takeCdr b)))))

(define (divide a b)
  (if (or (= (car b) 0) (= (takeCdr b) 0))
      "This is error"
      (list (* (car a) (/ 1 (takeCdr b)))
            (* (takeCdr a) (/ 1 (car b))))))



(define intervala (make-interval 1 5))
(define intervalb (make-interval 2 4))
(define intervalc (make-interval 1 0))


(display"add invertal:")
(add  intervala intervalb)
(newline)
(display"subtract invertal:")
(subtract intervala intervalb)
(newline)
(display"multiply invertal:")
(multiply intervala intervalb)
(newline)
(display"divide invertal:")
(divide intervala intervalb)
(newline)
(display"divide invertal:")
(divide intervala intervalb)