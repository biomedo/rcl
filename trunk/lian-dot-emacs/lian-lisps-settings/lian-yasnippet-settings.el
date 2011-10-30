;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-10-29 09:13:07 Saturday by lian>

(require 'yasnippet)


(defun lian-yasnippet-settings ()
  "Lian's settings for `yasnippet'."
  (setq yas/root-directory (concat lian-emacs-lisp-dir "/snippets"))
  (setq yas/prompt-functions '(yas/ido-prompt yas/x-prompt yas/dropdown-prompt))
  (setq yas/use-menu 'abbreviate))


(unset-key yas/minor-mode-map (kbd "C-c C-f"))

(eal-define-keys
 'yas/minor-mode-map
 `(("C-j i" yas/insert-snippet)))


(eval-after-load "yasnippet"
  `(lian-yasnippet-settings))


(yas/load-directory yas/root-directory)

(provide 'lian-yasnippet-settings)
