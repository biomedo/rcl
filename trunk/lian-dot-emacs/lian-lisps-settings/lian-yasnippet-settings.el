;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-06-13 14:49:58 Monday by lian>

(require 'yasnippet)


(defun lian-yasnippet-settings ()
  "Lian's settings for `yasnippet'."
  ;; (setq yas/root-directory (concat my-emacs-path "snippets"))
  (setq yas/prompt-functions '(yas/ido-prompt yas/x-prompt yas/dropdown-prompt))
  (setq yas/use-menu 'abbreviate))

(eval-after-load "yasnippet"
  `(lian-yasnippet-settings))

(yas/load-directory (concat lian-emacs-lisp-dir "/snippets"))

(provide 'lian-yasnippet-settings)
