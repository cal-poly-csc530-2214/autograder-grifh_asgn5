#lang racket

(define (toSketch filename)
  (let ([f (open-input-file filename)])
    (workfunc f)))

(define (workfunc f)
  (define line (read-line f))
  (if (eof-object? line)
      (begin (close-input-port f) '())
      (let ([p (map string->symbol (string-split line))])
        (cons (applyrules p) (workfunc f)))))

(define (applyrules line)
  (match line
    [(list 'return s) (list 'return (list s '\[0\]))]
    [(list 'if (list a ... '== b ...) ':) (list 'if (list (list a '== ) 'False) ':)]
    [(list 'for i 'in 'range (list a b ...) ':) (list 'for i 'in (list (list 'range (list a b)) (list 'range (list a '+ '1 b))))]
    [(list 'for i 'in 'range (list a ...) ':) '(apple sauce)]
    [other line]))

(define (printhelp l)
  (if (not (empty? l))
      (begin
        (displayln (first l))
        (printhelp (rest l)))
      '()))

(toSketch "exampletext.txt")
(printhelp (toSketch "examplework1.py"))