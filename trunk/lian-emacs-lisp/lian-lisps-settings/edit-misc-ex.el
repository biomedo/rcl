;;; Commentary:
;;; This is extensions of edit-misc
(require 'edit-misc)

(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (let ((column (current-column)))
      (beginning-of-line)
      (when (or (> arg 0) (not (bobp)))
        (forward-line)
        (when (or (< arg 0) (not (eobp)))
          (transpose-lines arg))
        (forward-line -1))
      (move-to-column column t)))))

;;;###autoload
(defun move-text-down (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines down."
  (interactive "*p")
  (move-text-internal arg))

;;;###autoload
(defun move-text-up (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines up."
  (interactive "*p")
  (move-text-internal (- arg)))

;;;###autoload
(defun delete-and-past-sexp (&optional not-whole)
  "delete current sexp and past yank"
  (interactive)
  (mark-whole-sexp not-whole)
  (call-interactively 'cua-paste))

;;;###autoload
(defun uniquify-all-lines-region (start end)
  "Find duplicate lines in region START to END keeping first occurrence."
  (interactive "*r")
  (save-excursion
    (let ((end (copy-marker end)))
      (while
          (progn
            (goto-char start)
            (re-search-forward "^\\(.*\\)\n\\(\\(.*\n\\)*\\)\\1\n" end t))
        (replace-match "\\1\n\\2")))))

;;;###autoload
(defun uniquify-all-lines-buffer ()
  "Delete duplicate lines in buffer and keep first occurrence."
  (interactive "*")
  (uniquify-all-lines-region (point-min) (point-max)))


(eal-define-keys
 `(emacs-lisp-mode-map lisp-interaction-mode-map java-mode-map sh-mode-map
                       c-mode-base-map text-mode-map ruby-mode-map html-mode-map
                       java-mode-map conf-javaprop-mode-map conf-space-mode-map
                       python-mode-map py-mode-map perl-mode-map cperl-mode-map
                       tcl-mode-map nxml-mode-map autoconf-mode-map)
 `(("C-c C-x" uncomment)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; misc-edit settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key [C-M-up] 'move-text-up)
(global-set-key [C-M-down] 'move-text-down)
(global-set-key (kbd "C-M-,") 'move-text-up)
(global-set-key (kbd "C-M-.") 'move-text-down)

(provide 'edit-misc-ex)

