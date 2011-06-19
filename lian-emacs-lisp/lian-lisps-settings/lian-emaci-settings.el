;; -*- Emacs-Lisp -*-
;; Time-stamp: <2011-06-19 14:18:13 Sunday by lian>

(require 'util)
(require 'emaci)


(eal-define-keys
 'emaci-mode-map
 `((";" emaci-roll-up)
   ("i" emaci-roll-down)
   ("I" emaci-roll-up)))

(defun lian-emaci-settings ()
  "lian's settings for `emaci'."
  ;; add code here if needed
  (message "lian's emaci settings invoking"))

(eval-after-load "emaci"
  `(lian-emaci-settings))

(provide 'lian-emaci-settings)
