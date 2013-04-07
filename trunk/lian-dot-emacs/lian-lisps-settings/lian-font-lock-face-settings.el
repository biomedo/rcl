;; -*- Emacs-Lisp -*-

;; Time-stamp: <2013-04-07 21:21:20 Sunday by lian>

(defun lian-font-lock-face-settings ()
  "Face settings for `font-lock'."
  ;; 语法着色
  (unless window-system (set-face-background 'font-lock-function-name-face "default"))
  (unless window-system (set-face-background 'font-lock-constant-face "default"))
  (unless window-system (set-face-background 'font-lock-type-face "default")))

(eval-after-load "font-lock"
  `(lian-font-lock-face-settings))

(provide 'lian-font-lock-face-settings)
