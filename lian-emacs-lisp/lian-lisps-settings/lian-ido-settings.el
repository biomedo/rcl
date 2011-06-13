;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-06-13 13:33:49 Monday by lian>

(defun lian-ido-settings ()
  "settings for `ido'."
  ;; disable auto searching for files unless called explicitly
  (setq ido-auto-merge-delay-time 99999)
  (define-key ido-file-dir-completion-map (kbd "C-c C-s") 
    (lambda() (interactive) (ido-initiate-auto-merge (current-buffer)))))

(eval-after-load 'ido
  `(lian-ido-settings))

(provide 'lian-ido-settings)
