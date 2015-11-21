(in-package :termbox-extras)

(defun draw-text (x y text &optional (fg-bg (cons termbox:+default+ termbox:+default+)))
  "execute a series of change-cell's in a sequential manner such as to write a line of text"
  (let ((converted-text (coerce text 'list)))
    (dotimes (i (length text))
      (termbox:change-cell (+ x i) y (char-code (nth i converted-text)) (car fg-bg) (cdr fg-bg)))))
