;;; configures and codes for tex mode

;; (add-to-list 'load-path (concat emacs-site-lisp-dir "auctex"))
;; (add-to-list 'load-path "~/.emacs.d/lisps/AucTeX/site-lisp/site-start.d")

;; (load "AucTeX.el" nil t t)
;; (load "preview-latex.el" nil t t)

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
  (setq-default TeX-master nil)
  (setq TeX-save-query   nil)
  (setq TeX-auto-untabify t) ;; 不使用 TAB字符缩进
  (setq TeX-command-list
        '(
          ;; if tex-master-file is a.tex then:
          ;; %t -- a.tex     %d -- a.dvi     %s -- a
          ;; %f -- a.ps
          ("latex" "latex %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run latex")
          ("xelatex" "xelatex -synctex=1 %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run Xetex")
          ;; ("dvi2pdf" "dvipdfmx -v %d" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run dvipdfmx")
          ("edvi2ps" "dvips %d" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run dvips")
          ("ps2pdf14" "ps2pdf14.bat %f" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run ps2pdf14.bat")
          ("tex2pdf" "pdflatex %s" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run pdflatex")
          ("toc" "gbk2uni %s" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run gbk2uni")
          ("BibTex" "bibtex8 %s" TeX-run-BibTeX nil t :help "Run BibTeX")
          ("View" "evince %s.pdf" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run Viewer")
          ("Index" "makeindex %s" TeX-run-command nil t :help "Create index file")
          ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
          ("All Clean" "(TeX-clean t)" TeX-run-function nil t :help "Delete all generated files")
          ("delete" "pdfclose --file %s.pdf" TeX-run-TeX nil (latex-mode doctex-mode) :help "Close pdf file")))
  
  (setq TeX-command-default "tex2pdf")
  ;; (setq LaTeX-document-regexp "document\\|CJK\\*?")  ;; CJK 环境中不缩进
  ;; (setq TeX-newline-function 'newline-and-indent) ;;回车时自动缩进
  )

(add-hook 'LaTeX-mode-hook 'lian-latex-mode-hook)

(add-hook 'LaTeX-mode-hook #'(lambda () (setq autopair-dont-activate t)))

(provide 'latex-settings)
