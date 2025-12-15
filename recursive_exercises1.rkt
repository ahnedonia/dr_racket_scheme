;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname recursive_exercises1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Main Function:
;Looks through a list, and removes 2's if found.

;If the list is empty, start with a literal empty list,
;else:
;  (if first elem of the list [car] is equal to 2, call notwos function and pass the rest of the list without the first element
;  else: appends the first element back to the lst
(define (notwos lst)
  (if (empty? lst )
      '()                                        ;then
      (if (equal? 2 (car lst))                   ;else
          (notwos (cdr lst))                       ;then
          (cons (car lst ) (notwos ( cdr lst ))))));else




;Helper Function:

;if: the list is empty, returns the counter value
;else: calls itself recursively (passing the rest of the list, without the first element, and increments the counter by 1)
(define (tailcount-helper lst counter)
  (if (empty? lst)
      counter
      (tailcount-helper (cdr lst) (+ 1 counter))))

;Main Function:
;Counts how many elements there are in a list

;calls the Helper function passing it the list and counter set to 0
(define (tailcount lst)
  (tailcount-helper lst 0))




;Main Function:
;Maps a procedure onto a list

;IF: the list is empty return a literal empty list
;ELSE: appends (creates a pair) the procedure applied to list's first element
;      to the invocation of my-map passing the list 1-st element and the procedure.

(define (my-map lst proc)
  (if (empty? lst )
      '()
      (cons (proc (car lst)) (my-map (cdr lst) proc))))




;Main Function:
(define (cylinder-volume radius height)
  (* (* 3.14 (expt radius 2))
     height))

(cylinder-volume 5 4)
