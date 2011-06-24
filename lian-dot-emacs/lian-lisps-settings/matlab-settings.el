;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-06-24 16:25:00 Friday by lian>

;; enable matlab-mode and accociate .m file with matlab-mode
(autoload 'matlab-mode "matlab" "Enter Matlab mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist)) 
(autoload 'matlab-shell "matlab" "Interactive Matlab mode." t)
(autoload 'mlint-minor-mode "mlint" "\
Toggle mlint minor mode, a mode for showing mlint errors.
With prefix ARG, turn mlint minor mode on iff ARG is positive.
\\{mlint-minor-mode-map\\}

\(fn &optional ARG)" t nil)

;; enable auto-complte-mode in matlab-mode
(add-to-list 'ac-modes 'matlab-mode) 

;; Customization:
;; (setq matlab-indent-function t) ; if you want function bodies indented
(setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save

(defun my-matlab-mode-hook ()
  (mlint-minor-mode 1)
  (setq fill-column 76)  ; where auto-fill should wrap
  ;; (define-key matlab-mode-map (kbd "M-s") 'ignore)
  ;; (define-key matlab-mode-map (kbd "M-s") 'emaci-mode-on)
  ;; (local-unset-key (kbd "M-s"))
  ;; (local-unset-key (kbd "C-j"))
  (unset-key matlab-mode-map (kbd "M-s"))
  (unset-key matlab-mode-map (kbd "C-j"))
  ;; (define-key matlab-mode-map (kbd "C-h") 'ignore)
  ;; (define-key matlab-mode-map (kbd "C-h") 'c-electric-backspace-kill)
  ;; (local-unset-key (kbd "C-h"))
  (unset-key matlab-mode-map (kbd "C-h"))

  (define-key matlab-mode-map (kbd "C-c C-c") 'ignore)
  (define-key matlab-mode-map (kbd "C-c C-c") 'comment)
  (define-key matlab-mode-map (kbd "C-c C-d") 'ignore)
  (define-key matlab-mode-map (kbd "C-c C-d") 'uncomment))

(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)

(defun my-matlab-shell-mode-hook ()
 '())

(add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)

;; Turn off Matlab desktop
(setq matlab-shell-command-switches '("-nojvm"))

;; (matlab-cedet-setup)

(provide 'matlab-settings)
