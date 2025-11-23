(define (over-or-under num1 num2)
   ; (if (< num1 num2)
    ;    (- 1)
     ;   (if (= num1 num2)
      ;      0
       ;     1
        ;)
   ; )
   (cond ((< num1 num2) (- 1))
        ((= num1 num2) 0)
        (else 1))
)

(define (make-adder num)
 ;   (define (plus inc)
  ;      (+ num inc)
   ; )
    ;plus
    (lambda (inc) (+ num inc))
)

(define (composed f g)
    (lambda (x) (f (g x)))
)

(define (repeat f n)
    (if (= n 1)
        f
        (lambda (x) (f ((repeat f (- n 1)) x) )))
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b)
    (cond ((or (<= a 0) (<= b 0)) 0)
        ((zero? (remainder (max a b) (min a b))) (min a b))
        (else (gcd (min a b) (remainder (max a b) (min a b))))
    )
)
