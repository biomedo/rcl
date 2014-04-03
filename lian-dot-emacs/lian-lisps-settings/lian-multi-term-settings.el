;; -*- Emacs-Lisp -*-

;; Time-stamp: <2014-04-03 18:06:02 Thursday by weidong>
 
(require 'multi-term)
 
(when (>= emacs-major-version 24)
  (require 'term-fix))


;; (setq multi-term-program "/bin/bash")
;; (setq term-unbind-key-list '("C-x" "<ESC>" "<up>" "<down>" "C-j"))
(delete '("C-y" . term-send-raw) term-bind-key-alist)
;; (add-to-list 'term-bind-key-alist '("C-u" . cua-scroll-down))
(add-to-list 'term-bind-key-alist '("C-y" . term-send-yank))

(provide 'lian-multi-term-settings)
