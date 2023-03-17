; Name: Parker Conley
; Date: 03.14.2023
; Description: Following along with The Little Schemer.

#lang racket

; Definition of atom? given by book.
(define (atom? x)
  ((and (not (pair? x)) (not (null? x)))))
    
; Definition of atom? given by book.
(define (lat? l)
  (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f)))

; Definition of member? given by book.
(define (member? a lat)
  (cond
    ((null? lat) #f)
    (else (or (eq? (car lat) a)
              (member? a (cdr lat))))))