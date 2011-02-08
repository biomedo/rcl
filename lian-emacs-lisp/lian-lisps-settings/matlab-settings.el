;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-02-08 02:41:59 Tuesday by lian>

;; enable matlab-mode and accociate .m file with matlab-mode
(autoload 'matlab-mode "matlab" "Enter Matlab mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist)) 
(autoload 'matlab-shell "matlab" "Interactive Matlab mode." t)

;; enable auto-complte-mode in matlab-mode
(add-to-list 'ac-modes 'matlab-mode) 

;; Customization:
(setq matlab-indent-function t) ; if you want function bodies indented
;; (setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save

(defun my-matlab-mode-hook ()
  (setq fill-column 76)  ; where auto-fill should wrap
  (local-set-key (kbd "C-h") 'c-electric-backspace-kill)
  (local-set-key (kbd "C-c C-c") 'comment)
  (local-set-key (kbd "C-c C-x") 'uncomment))

(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)

(defun my-matlab-shell-mode-hook ()
 '())

(add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)

;; Turn off Matlab desktop
(setq matlab-shell-command-switches '("-nojvm"))

;; (matlab-cedet-setup)

(provide 'matlab-settings)
