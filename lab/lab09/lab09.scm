(define (over-or-under num1 num2)
(
  if (< num1 num2) -1 (
    if (= num1 num2) 0 1
  )
))

(define (make-adder num)
(
  lambda (inc) (+ inc num)
))

(define (composed f g)
(
  lambda (x) (f (g x))
))

(define (repeat f n)
(
  lambda (x) (
    if (> n 1) (f ((repeat f (- n 1)) x)) (f x)
  )
))

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b)
(
  if (zero? (modulo (max a b) (min a b))) (min a b) (gcd (min a b) (modulo (max a b) (min a b)))
))
