(defpackage :cl-termbox-extras.asdf
  (:use #:cl #:asdf))

(in-package :cl-termbox-extras.asdf)

(defsystem :cl-termbox-extras
  :description "Tests, examples, and utilities for cl-termbox"
  :author "fouric"
  :license "BSD-2-Clause"
  :version "0.0"

  :depends-on (:cl-termbox)
  :pathname "src"
  :serial t

  :components
  ((:file "package")
   (:file "tests")
   (:file "examples")
   (:file "utilities")))
