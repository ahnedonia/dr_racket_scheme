;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname recursive_exercises2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require racket/trace)




;Main Function: (FACTORIAL)
;Write a Racket function named factorial that takes a non-negative integer n
;and calculates its factorial (n!). The factorial is the product of all positive integers less than or equal to n.

;Formula: (n!) = n * (n-1) * (n-2) * ... * 1

(define (factorial n)
  (if (equal? 1 n)    
      n
      (* n (factorial (- n 1 )))))

;(trace factorial)
;(factorial 5)




;Main Function: (SUM OF ELEMENTS)
;Write a Racket function named list-sum that takes a list of numbers (e.g., '(10 20 30)) and calculates the total sum of all the elements.

; '(1,2,3)
(define (list-sum lst)
  (if (empty? lst)
      0
      (+ (car lst) (list-sum (cdr lst)))))

;(trace list-sum)
;(list-sum '(1 2 3 4))




;Main Function: (APPEND-TWO-LISTS)
;Write a racket function named my-append that takes two lists lst1 and lst 2 and returns
;a single list containing all the elements

(define (my-append lst1 lst2)
  (if (empty? lst1)
      lst2
      (cons (car lst1) (my-append (cdr lst1) lst2))))

;(my-append '(1) '(2 3))
;(trace my-append)




;Main Function : (GCD)
;Write a function named gcd, that calculates the gcd, of two non negative integers a and b, using Euclidean Algorithm.

(define (gcdd a b)
  (if (equal? 0 b)
      a
      (gcdd b (remainder a b))))

(gcdd 14 6)
(trace gcdd)





;Main Function: (REVERSE of a list)
;Write a function with called deep-reverse that takes a list and reverses the order of elements 

(define (reverse1 lst)
  (if (empty? lst)
      '()
      (cons (car lst) (reverse1 (cdr lst)))))

(reverse '(1 2 3 5))
