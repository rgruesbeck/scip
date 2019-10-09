# Problems
# 1
## 1.1
10
12
8
3
6
a
b
19
false
4
16
6
16

## 1.2
(/	(+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
	(* 3 (- 6 2) (- 2 7))
)

-37/150

## 1.3
(define (sqsumlrg a b c)
	(cond ((and (a =< b) (a =< c)) (+ (b * b) (c * c)))
	      ((and (b =< a) (b =< c)) (+ (a * a) (c * c)))
	      ((and (c =< a) (c =< b)) (+ (a * a) (b * b)))
	)
)

## 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

this procedure will conditionaly apply the procedures + and -
to the arguments a and b

## 1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

applicative-order eveluation:
(test 0 (p)) doesn't terminate because (p) is infinately substituted for itself

normal-order evaluation:
(test 0 (p))
(if (= 0 0) 0 (p))
(if #t 0 (p))
0
