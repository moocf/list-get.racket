#lang racket
(require eopl)

;; list.get: List -> Int -> Value
;; usage: (list.get list n) = nth element of the list (0-index)
(define list.get
  (lambda (l n)
    (if (null? l)
        (report-list-too-short n)
        (if (zero? n)
            (car l)
            (list.get (cdr l) (- n 1))))))

(define report-list-too-short
  (lambda (n)
    (eopl:error 'list.get
                "list too short by ~s elements.~%" (+ n 1))))



; reference
; ---------

; (define id expr):
; define global identifier

; (lambda (args...) body)
; define a function

; (null? list)
; is list is empty

; (zero? number)
; is number is zero

; (car list)
; returns first element of list (head)

; (cdr list)
; get elements of list excluding the first (tail)

; (eopl:error symbol string args...)
; abort with error message
; ~s: parameter
; ~%: new line
