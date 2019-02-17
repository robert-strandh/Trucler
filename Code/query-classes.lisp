(cl:in-package #:trucler)

;;; The base class of all INFO classes.
(defclass info () ())

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; VARIABLE-INFO classes.

(defclass variable-info (name-mixin)
  ())

(defclass authentic-variable-info (variable-info type-mixin)
  ())

(defclass lexical-variable-info
    (authentic-variable-info identity-mixin ignore-mixin dynamic-extent-mixin)
  ())

(defclass special-variable-info (authentic-variable-info)
  ((%global-p :initform nil :initarg :global-p :reader global-p)))
  
(defmethod clone-info append ((object special-variable-info))
  `((:global-p global-p)))

(defclass constant-variable-info (variable-info)
  ((%value :initarg :value :reader value)))

(defmethod clone-info append ((object constant-variable-info))
  `((:value value)))

(defclass symbol-macro-info (variable-info type-mixin expansion-mixin)
  ())

(defclass local-symbol-macro-info (symbol-macro-info ignore-mixin)
  ())

(defclass global-symbol-macro-info (symbol-macro-info)
  ())

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; FUNCTION-INFO classes.

(defclass function-info (name-mixin) ())

(defclass authentic-function-info (function-info type-mixin inline-mixin)
  ())

(defclass local-function-info
    (authentic-function-info identity-mixin ignore-mixin dynamic-extent-mixin)
  ())

(defclass global-function-info
    (authentic-function-info compiler-macro-mixin class-name-mixin)
  ()
  (:default-initargs :class-name 'function))

(defclass generic-function-info (global-function-info method-class-name-mixin)
  ()
  (:default-initargs :class-name 'standard-generic-function))

(defclass macro-info (function-info expander-mixin)
  ())

(defclass local-macro-info (macro-info ignore-mixin)
  ())

(defclass global-macro-info (macro-info compiler-macro-mixin)
  ())

(defclass special-operator-info (function-info)
  ())

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; BLOCK-INFO class.

(defclass block-info (name-mixin identity-mixin)
  ())

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; TAG-INFO class.

(defclass tag-info (name-mixin identity-mixin)
  ())

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; OPTIMIZE-INFO class.

(defclass optimize-info
    (speed-mixin compilation-speed-mixin debug-mixin space-mixin safety-mixin)
  ())

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CLASS-INFO class.

(defclass class-info (superclass-names-mixin metaclass-name-mixin)
  ())
