;;; configures and codes for tex mode

;; (add-to-list 'load-path (concat emacs-site-lisp-dir "auctex"))
;; (add-to-list 'load-path "~/.emacs.d/lisps/AucTeX/site-lisp/site-start.d")

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

(defun Tex-insert-macro-at-point (symbol)
  (interactive
   (list (completing-read
          (concat "Macro (default " TeX-default-macro "): " TeX-esc)
          (TeX-symbol-list) nil nil nil
          'TeX-macro-history)))
  (mark-whole-sexp)
  (TeX-insert-macro symbol))

(defun lian-latex-mode-hook ()
  (auto-fill-mode)
  (set-fill-column 70)
  (TeX-fold-mode 1)
  (TeX-PDF-mode 1)
  (reftex-mode)
  (setq TeX-electric-escape t)
  (setq LaTeX-math-mode t)
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq preview-scale-function 1.5)
  (setq-default TeX-master nil)
  (setq TeX-save-query   nil)
  (setq TeX-auto-untabify t) ;; 不使用 TAB字符缩进
  (setq TeX-command-list
        '(
          ;; if tex-master-file is a.tex then:
          ;; %t -- a.tex     %d -- a.dvi     %s -- a
          ;; %f -- a.ps
          ("Latex" "latex %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run latex")
          ;; ("xelatex" "xelatex -synctex=1 %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run Xetex")
          ;; ("dvi2pdf" "dvipdfmx -v %d" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run dvipdfmx")
          ;; ("edvi2ps" "dvips %d" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run dvips")
          ;; ("ps2pdf14" "ps2pdf14.bat %f" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run ps2pdf14.bat")
          ("PdfLatex" "pdflatex %s" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run pdflatex")
          ;; ("toc" "gbk2uni %s" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run gbk2uni")
          ;; ("BibTex" "bibtex8 %s" TeX-run-BibTeX nil t :help "Run BibTeX")
          ("BibTex" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
          ("View" "evince -w %s.pdf" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run Viewer")
          ("LianLatex" "lian-latex %t %s.pdf" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run Viewer")
          ("Index" "makeindex %s" TeX-run-command nil t :help "Create index file")
          ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
          ("All Clean" "(TeX-clean t)" TeX-run-function nil t :help "Delete all generated files")
          ("Delete" "pdfclose --file %s.pdf" TeX-run-TeX nil (latex-mode doctex-mode) :help "Close pdf file")))
  
  (setq TeX-command-default "PdfLatex")
  (define-key LaTeX-mode-map (kbd "C-c RET") 'Tex-insert-macro-at-point)
  (define-key LaTeX-mode-map (kbd "C-c a") 'ac-start)
  (local-unset-key (kbd "C-j"))
  ;; (define-key LaTeX-mode-map (kbd "C-c m") 'Tex-insert-math-symbol)
  ;; (define-key LaTeX-mode-map (kbd "C-c v") 'pdflatex-or-view)
  ;; (setq LaTeX-document-regexp "document\\|CJK\\*?")  ;; CJK 环境中不缩进
  ;; (setq TeX-newline-function 'newline-and-indent) ;;回车时自动缩进
  )

(add-hook 'LaTeX-mode-hook 'lian-latex-mode-hook)
(add-hook 'LaTeX-mode-hook #'(lambda () (setq autopair-dont-activate t)))

(provide 'latex-settings)
