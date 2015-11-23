(in-package :termbox-extras)

(defun draw-text (x y text &optional (fg termbox:+default+) (bg termbox:+default+))
  "execute a series of change-cell's in a sequential manner such as to write a line of text"
  (dotimes (i (length text))
    (termbox:change-cell (+ x i) y (char-code (schar text i)) fg bg)))
