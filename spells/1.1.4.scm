;;; square

(define (square x) (* x x))

(square 21)
(square (+ 2 5))
(square (square 3))

;;; some of squares
;;; x^2 + y^2
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 3 4)

;;; some function
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)
