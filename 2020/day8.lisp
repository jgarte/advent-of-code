(defpackage :day8 (:use #:common-lisp))
(in-package :day8)

(defparameter *example-input* "nop +0
acc +1
jmp +4
acc +3
jmp -3
acc -99
acc +1
jmp -4
acc +6")

(defparameter *input* "acc +15
jmp +461
acc +6
nop +445
jmp +324
jmp +253
acc -4
acc +22
acc +11
jmp +471
jmp +145
acc +19
jmp -7
jmp +431
nop +66
acc +48
jmp +409
jmp +514
jmp +1
acc +32
jmp +552
acc +21
jmp +317
nop +488
jmp +500
jmp +214
acc +41
jmp +17
acc +19
jmp +1
acc +28
jmp +74
acc +37
acc +46
acc -10
jmp +455
acc +33
jmp +585
acc -13
acc +18
jmp +19
jmp +601
acc +30
jmp +272
acc +18
acc +50
acc +1
acc +29
jmp +50
nop +573
jmp +562
nop +274
jmp +1
acc +6
jmp +1
jmp +64
jmp +1
acc +37
jmp +161
nop +549
acc +21
jmp +1
nop +325
jmp +331
acc +0
acc +25
jmp +431
nop +349
jmp +45
acc +37
acc +9
jmp +354
jmp +132
jmp +307
jmp +1
nop +465
jmp +386
acc +13
acc +20
jmp -20
acc -15
nop +158
jmp +415
acc +33
acc +40
acc +38
acc -2
jmp +81
acc +44
acc +9
acc +15
nop +139
jmp -18
nop +187
acc +47
acc +45
acc +40
jmp +456
acc +48
jmp +1
jmp -75
acc +11
acc -13
nop +222
jmp +202
acc +38
acc +31
acc -11
acc +1
jmp +431
acc +37
nop +195
jmp +118
acc -8
jmp +1
jmp +154
acc +7
acc +13
jmp +43
jmp +507
acc -2
acc +11
jmp +465
acc -12
nop -103
jmp +50
acc +2
nop +4
acc +46
acc +17
jmp +100
nop +149
jmp +397
nop -28
jmp +236
acc +0
nop +465
acc +19
acc -5
jmp +91
jmp +118
acc -3
nop +176
acc +8
jmp +24
jmp +235
acc -7
nop -1
nop +347
acc +33
jmp +165
acc -18
acc +9
acc -8
jmp +179
acc -3
acc +40
jmp +1
acc +5
jmp +475
jmp +70
acc +50
acc -1
acc -11
acc +43
jmp +283
nop +114
jmp +161
acc -19
acc +50
acc +47
acc +49
jmp +381
jmp +1
jmp -94
nop +373
acc +26
acc +7
jmp +41
acc -7
jmp +264
nop -40
acc +23
jmp -60
acc +15
acc +19
acc +39
acc -16
jmp +283
acc +4
jmp +258
acc +0
acc +38
acc -6
jmp +32
acc +33
jmp +1
acc -4
acc +17
jmp +149
acc -17
acc +39
nop +75
jmp -136
acc +6
acc +10
jmp +1
acc +9
jmp +390
jmp +363
acc +32
jmp +95
jmp -71
acc +12
jmp +86
acc +49
acc +2
acc +0
jmp +139
nop +363
acc +21
jmp +366
jmp +1
acc +16
acc -13
jmp +55
jmp -159
acc +46
acc +50
jmp +266
acc +2
jmp -180
jmp -181
acc +41
acc -3
nop -176
jmp +121
acc +23
jmp +281
acc +5
acc +14
acc -8
jmp +128
jmp +281
nop +81
jmp +1
acc +36
acc +34
jmp -176
acc +8
jmp +309
acc +11
nop -77
jmp -40
acc +0
acc +8
acc +14
jmp +296
nop +197
nop -124
acc +38
acc +9
jmp +310
jmp -183
jmp +353
acc +28
acc -18
nop +120
jmp -217
acc +49
acc +38
jmp -243
nop -68
acc +9
acc +15
nop +43
jmp -46
acc -4
jmp +262
jmp +176
nop -139
acc +38
acc +35
acc -8
jmp -225
acc +37
acc +49
acc +42
nop +278
jmp +264
acc -11
nop +291
acc +21
nop -221
jmp +80
acc +15
acc +13
acc +2
nop -40
jmp +309
acc -18
acc -5
acc +24
jmp -70
acc +12
jmp -261
acc +4
acc -2
acc +3
jmp +1
jmp +302
acc -7
jmp +1
acc +39
jmp +73
jmp +18
acc +3
jmp +277
acc +4
nop +125
nop -284
acc +41
jmp -312
acc +13
jmp -183
nop -35
jmp -137
jmp -76
acc +1
acc +31
acc +39
jmp +56
jmp +290
jmp +1
acc +12
nop +71
acc +43
jmp -296
jmp +68
acc -14
acc +35
nop -290
jmp -24
acc +39
acc -8
nop +110
jmp +1
jmp +78
acc +11
acc +9
acc -11
acc +50
jmp +167
acc +50
acc +19
acc +0
jmp -221
acc -4
acc -6
nop +11
acc +49
jmp -348
nop +197
acc +6
jmp -196
nop -155
jmp -76
acc +50
acc -8
jmp -89
acc +9
jmp +255
acc +25
jmp +199
jmp -35
acc +46
acc +25
jmp +1
acc +32
jmp -31
acc -3
acc -5
jmp +73
acc +7
acc +22
acc -15
jmp +145
nop -97
acc +47
acc +22
jmp -110
acc +44
acc +4
jmp -383
acc +34
jmp +1
jmp +16
nop -128
acc +43
jmp -34
nop +95
acc +3
jmp +4
acc +13
acc -2
jmp -90
acc +39
jmp +187
acc +24
acc +23
acc +42
jmp -11
jmp -281
jmp +1
acc +25
jmp -157
acc +3
acc -3
nop -24
acc -13
jmp -46
acc +10
acc +16
nop -7
jmp -289
nop -408
acc -5
acc +23
nop +91
jmp -234
acc +0
acc +4
acc +15
acc -15
jmp -367
acc +32
acc -9
acc +13
jmp -194
acc +38
nop +126
acc +1
nop +124
jmp -275
acc -14
acc +26
jmp +55
jmp -388
acc +3
acc +8
acc +31
acc +34
jmp -372
acc +45
jmp -115
acc -6
acc +47
acc -17
acc +29
jmp -438
acc +33
jmp -113
jmp -301
jmp -396
acc +46
jmp -284
acc -14
acc +11
acc +20
nop -356
jmp -445
acc +20
acc -6
acc -8
jmp +134
nop +54
acc +33
jmp +1
acc +3
jmp +108
acc +14
nop +67
nop -66
acc +45
jmp +117
acc +45
acc +42
acc +25
acc -18
jmp -354
acc +8
jmp -240
nop -373
acc -8
jmp +72
jmp -95
jmp -350
jmp -62
acc +6
acc -18
jmp +108
acc +14
acc +11
nop -164
acc +4
jmp +6
acc +24
acc +11
acc -7
acc +27
jmp -171
acc +23
acc +36
acc +20
acc +42
jmp -51
acc +28
acc +10
jmp -218
nop +63
jmp -294
acc -10
nop +44
jmp +43
jmp -444
acc +20
acc +39
acc +29
jmp -507
jmp -265
jmp -471
nop +17
acc +39
acc +4
jmp -54
acc +1
nop -448
acc -18
acc +3
jmp -495
acc +17
acc +16
jmp +6
acc +6
acc +0
jmp +1
acc -15
jmp -317
jmp -77
acc +4
acc +30
acc -3
jmp -187
acc -11
nop -189
nop -488
jmp -140
acc +50
jmp -142
nop -211
jmp -166
acc -12
acc +7
acc +32
acc +40
jmp -384
jmp -186
nop -261
acc +32
acc +19
acc +44
jmp +16
acc +15
acc +30
nop -476
acc +9
jmp -299
acc -17
acc -17
acc -4
acc +44
jmp -133
jmp -58
acc +21
acc +4
acc -19
jmp -170
acc +32
acc -3
jmp -363
acc +48
acc +9
acc +48
jmp +5
acc +30
acc +40
jmp -450
jmp -282
jmp -388
acc +12
jmp -361
acc -6
jmp -237
acc +27
acc +16
acc -19
acc -5
jmp -145
acc +38
jmp -565
nop -341
jmp +11
acc +22
nop -219
jmp -597
acc +33
jmp -572
jmp -292
acc +7
acc -14
acc +33
jmp -432
acc +47
jmp -41
nop -306
jmp -85
jmp +1
nop -215
acc +30
acc +9
jmp -71
acc +42
acc +49
jmp -553
acc +28
acc +43
jmp +1
jmp -147
acc +44
acc +26
nop -176
jmp -582
acc +7
acc -14
acc +16
acc +34
jmp +1
")

(defparameter *fixed-example-input*
  "nop +0
acc +1
jmp +4
acc +3
jmp -3
acc -99
acc +1
nop -4
acc +6")

(defclass op ()
  ((name
    :documentation
    "A symbol naming the function to execute."
    :initarg :name
    :reader name
    :initform (error "Must supply an op name."))
   (offset
    :documentation
    "The op offset to effect when executing."
    :initarg :offset
    :reader offset
    :initform (error "Must supply an op offset."))
   (executed
    :documentation
    "Either NIL or the op count when this op was executed."
    :initform nil
    :accessor executed)))

(defmethod print-object ((object op) stream)
  (print-unreadable-object (object stream :type t)
    (with-slots (name offset executed) object
      (format stream "~s :offset ~d :executed ~s" name offset executed))))

(defclass env ()
  ((ops
    :documentation
    "An array of OP comprising program."
    :initarg :ops
    :initform (error "Must supply :ops."))
   (op-index
    :documentation
    "The index of the next op to run."
    :initform 0)
   (accumulator
    :documentation
    "A global accumulator manipulated by program ops."
    :initform 0)))

(define-condition program-exit-error (error)
  ((accumulator
    :initarg :accumulator
    :reader accumulator)))

(define-condition infinite-loop (program-exit-error)
  ())

(define-condition normal-exit (program-exit-error)
  ())

(defmethod print-object ((object env) stream)
  (print-unreadable-object (object stream :type t)
    (with-slots (ops op-index accumulator) object
      (format stream ":ops ~s :op-index ~d :accumulator ~s"
              ops op-index accumulator))))

(defun parse (data)
  "Parse a program from DATA, returning a vector of OP."
  (with-input-from-string (in data)
    (coerce
     (loop :for name = (read in nil nil)
           :for offset = (read in nil nil)
           :while (and name offset)
           :collect (make-instance 'op :name name
                                       :offset offset))
     'vector)))

(defun error-exit (env type)
  (error type :accumulator (slot-value env 'accumulator)))

(defun next-op (env)
  (with-slots (op-index ops) env
    (aref ops op-index)))

(defun nop (env offset)
  (declare (ignore offset))
  (jmp env 1))

(defun jmp (env offset)
  (with-slots (op-index ops) env
    (setf op-index (+ op-index offset))
    (assert (<= 0 op-index (length ops)))
    (when (eql op-index (length ops))
      (error-exit env 'normal-exit))))

(defun acc (env offset)
  (with-slots (op-index ops accumulator) env
    (setf accumulator (+ accumulator offset))
    (jmp env 1)))

(defun step-op (env op-count)
  (with-slots (op-index ops accumulator) env
    (let ((op (aref ops op-index)))
      (with-slots (name offset executed) op
        (unless (null executed)
          (error-exit env 'infinite-loop))
        (setf executed op-count)
        (funcall (symbol-function name) env offset)))))

(defun run-low (ops)
  (let* ((env (make-instance 'env :ops ops)))
    (loop :for op-count :from 0
          :for op = (next-op env)
          :do (step-op env op-count))))

(defun run (ops)
  (handler-case
      (run-low ops)
    (infinite-loop (e)
      (format t "Infinite loop detected; accumulator at ~s" (accumulator e))
      (accumulator e))
    (normal-exit (e)
      (format t "Program exited normally; accumulator at ~S" (accumulator e))
      t)))

(defun fix-op (op)
  (with-slots (name) op
    (setf name (cond
                 ((eq name 'nop) 'jmp)
                 ((eq name 'jmp) 'nop)
                 (t name)))))

(defun run-with-fix (ops fix-index)
  (fix-op (aref ops fix-index))
  (handler-case
      (run-low ops)
    (infinite-loop ()
      nil)
    (normal-exit (e)
      (accumulator e))))

(defun fix (program-text)
  (loop :for fix-index :from 0
        :for ops = (parse program-text)
        :for accumulator-at-normal-exit = (run-with-fix ops fix-index)
        :if (numberp accumulator-at-normal-exit)
          :return accumulator-at-normal-exit))
        
