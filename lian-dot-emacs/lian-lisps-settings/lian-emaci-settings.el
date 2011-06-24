;; -*- Emacs-Lisp -*-
;; Time-stamp: <2011-06-23 21:39:12 Thursday by lian>

(require 'util)
(require 'emaci)


(eal-define-keys
 'emaci-mode-map
 `((";" emaci-roll-down)
   ("i" emaci-roll-up)
   ("I" highlight-symbol-at-point)))

(defun lian-emaci-settings ()
  "lian's settings for `emaci'."
  ;; add code here if needed
  (message "lian's emaci settings invoking"))

(eval-after-load "emaci"
  `(lian-emaci-settings))

(provide 'lian-emaci-settings)
