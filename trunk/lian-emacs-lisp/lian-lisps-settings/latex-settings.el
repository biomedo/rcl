;;; configures and codes for tex mode

;; (add-to-list 'load-path (concat emacs-site-lisp-dir "auctex"))
;; (add-to-list 'load-path "~/.emacs.d/lisps/AucTeX/site-lisp/site-start.d")

;; (load "AucTeX.el" nil t t)
;; (load "preview-latex.el" nil t t)


(defun lian-latex-mode-hook ()
  (auto-fill-mode)
  (set-fill-column 70)
  ;; (TeX-fold-mode 1)
  (TeX-PDF-mode 1)
  (reftex-mode)
  (setq TeX-electric-escape t)
  (setq LaTeX-math-mode t)
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  ;; (setq-default TeX-master nil)

  (setq TeX-auto-untabify t) ;; 不使用 TAB字符缩进
  ;; (setq LaTeX-document-regexp "document\\|CJK\\*?")  ;; CJK 环境中不缩进
  ;; (setq TeX-newline-function 'newline-and-indent) ;;回车时自动缩进
  (setq TeX-view-program-list
        '(("Evince" "evince %o")
          ("Okular" "okular --unique %o")
          ("Firefox" "firefox %o")))
  (setq TeX-view-program-selection
        '((output-pdf "Evince")
          (output-dvi "Evince"))))

(add-hook 'LaTeX-mode-hook 'lian-latex-mode-hook)


(provide 'latex-settings)
