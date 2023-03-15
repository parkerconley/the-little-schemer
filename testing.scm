; Name: Parker Conley
; Date: 03.14.2023
; Description: Following along with The Little Schemer.

#lang scheme

; Definition of atom? given by book.
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

; Definition of atom? given by book.
(define (lat? l)
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))