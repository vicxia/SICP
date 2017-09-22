(define (cube-iter guess x)
	(if (good-enough? (improve guess x) guess)
     (improve guess x)
     (cube-iter (improve guess x) x)
	)
)

(define (good-enough? new-guess old-guess)
	(> 0.01 (/ (abs(- new-guess old-guess)) old-guess))
)

(define (improve guess x)
    (/ (+ (/ (/ x guess) guess) (* 2 guess)) 3) 
)

(define (average x y)
	(/ (+ x y) 2)
)

(define (cube x)
	(cube-iter 1.0 x)
)
