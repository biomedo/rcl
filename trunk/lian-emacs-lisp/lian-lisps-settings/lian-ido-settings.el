;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-06-16 21:11:02 Thursday by lian>



(defun lian-ido-settings ()
  "settings for `ido'."
  (defun ido-goto-dir-in-killring ()
    (interactive)
    "Go to first directory in killring when use `ido-find-file'"
    (ido-set-current-directory (current-kill 0 t))
    (setq ido-exit 'refresh)
    (exit-minibuffer))

  ;; disable auto searching for files unless called explicitly
  (setq ido-auto-merge-delay-time 99999)
  ;; (define-key ido-file-dir-completion-map (kbd "C-c C-s") (lambda() (interactive) (ido-initiate-auto-merge (current-buffer))))

  ;; lian-ido-keys
  (add-hook ido-define-mode-map-hook 'lian-ido-keys)

  (defun lian-ido-keys ()
    "`ido'的按键设置"
    (let ((map
           (unless is-before-emacs-21
             (setq ido-mode-map ido-completion-map))))
      (eal-define-keys-commonly
       map 
       `(("C-y" ido-goto-dir-in-killring)
         ("C-s" (lambda() (interactive) (ido-initiate-auto-merge (current-buffer)))))))))


(eval-after-load 'ido
  `(lian-ido-settings))

(provide 'lian-ido-settings)
