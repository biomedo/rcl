;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-06-13 11:55:25 Monday by lian>

(require 'auto-complete-settings)

(defun ac-settings-4-latex ()
  (setq ac-sources
        '(ac-source-yasnippet
          ac-source-abbrev
          ac-source-words-in-buffer
          ac-source-words-in-same-mode-buffers
          ac-source-files-in-current-dir
          ac-source-filename)))

(am-add-hooks `latex-mode-hook 'ac-settings-4-latex)

(provide 'lian-auto-complete-settings)
