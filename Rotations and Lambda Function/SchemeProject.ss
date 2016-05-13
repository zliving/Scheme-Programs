(define test (list 1 2 3))
;Zachary Livingston
;Scheme functions
;5/6/1016



;The main function to call the rotation of a list

(define (rotate LIST1)
  (full-rotate LIST1 '() 0)
 )

;Rotates the list by appending the cdr of the list
;to the first element of the list in a new list
;this function does it for the length of the list

(define (full-rotate list1 newList count)
  (if (= count (length list1))
      newList
    (full-rotate (append (cdr list1)
              (cons (car list1)
                    '())) 
               (append newLIST (list (append (cdr list1)
              (cons (car list1)
                    '()))))
               (+ count 1)
      )
  )
 )

;The main function for filtering out a list from an input function

(define (filter expression list1)
  (bool expression list1 '())
  )

;Evaluates the list given by the lambda function given, if the evaluation is true
;then it puts the value into a new list and removes it from the old
(define (bool expression list1 newList)
  (if (= 0 (length list1))
      newList
    (if (expression (car list1))
        (bool expression (cdr list1) (append newList(list (car list1))))
        (bool expression (cdr list1) newList)
     )
   )
 )