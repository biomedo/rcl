;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-08-05 20:46:01 Friday by lian>

(require 'multi-term)


;; (setq multi-term-program "/bin/bash")
;; (setq term-unbind-key-list '("C-x" "<ESC>" "<up>" "<down>" "C-j"))
(delete '("C-y" . term-send-raw) term-bind-key-alist)
;; (add-to-list 'term-bind-key-alist '("C-u" . cua-scroll-down))
(add-to-list 'term-bind-key-alist '("C-y" . term-send-yank))

(provide 'lian-multi-term-settings)
