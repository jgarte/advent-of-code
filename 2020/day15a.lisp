;;
;; Day 15 of Advent of Code 2020, in Common Lisp.  This solves Part One.
;; See https://adventofcode.com/2020/day/15 for the problem statement.
;;
;; I'm using only standard Common Lisp functions; no external packages.
;;

(defpackage :day15a (:use #:common-lisp))
(in-package :day15a)

(defparameter *example-input* "0,3,6")

(defparameter *input* "9,6,0,10,18,2,1")

(defun split-by-commas (str)
  (let ((length (length str)))
    (loop
      :with end = length
      :for left := 0 :then (1+ right)
      :for right := (or (position #\, str :start left)
                        length)
      :collect (subseq str left right)
      :until (>= right end))))

(defun parse-input (input)
  (mapcar #'parse-integer (split-by-commas input)))

(defun play-game (numbers turns)
  (do ((memory (make-hash-table))
       (turn 1 (1+ turn))
       spoken
       prior-turn)
      ((> turn turns) spoken)
    (setf spoken (cond
                   (numbers (pop numbers))
                   (prior-turn (- turn prior-turn 1))
                   (t 0)))
    (setf prior-turn (gethash spoken memory nil))
    (setf (gethash spoken memory) turn)))

(defun part-one (input turns)
  (play-game (parse-input input) turns))

(defun test ()
  (assert (eql 0 (part-one *example-input* 10)))
  (assert (eql 436 (part-one *example-input* 2020)))
  (assert (eql 1 (part-one "1,3,2" 2020)))
  (assert (eql 10 (part-one "2,1,3" 2020)))
  (assert (eql 27 (part-one "1,2,3" 2020)))
  (assert (eql 78 (part-one "2,3,1" 2020)))
  (assert (eql 438 (part-one "3,2,1" 2020)))
  (assert (eql 1836 (part-one "3,1,2" 2020)))
  (assert (eql 1238 (Part-one "9,6,0,10,18,2,1" 2020))))
