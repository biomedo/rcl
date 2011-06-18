;;; configures and codes for tex mode

;; (add-to-list 'load-path (concat emacs-site-lisp-dir "auctex"))
;; (add-to-list 'load-path "~/.emacs.d/lisps/AucTeX/site-lisp/site-start.d")

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

(setq auto-mode-alist (cons '("\\.tex\\'" . latex-mode) auto-mode-alist))

(defun lian-tex-settings ()
  "tex settings"

  (defun lian-latex-keys ()
    "late mode keys"
    ;; (local-unset-key (kbd "C-j"))
    (unset-key LaTeX-mode-map (kbd "C-j"))
    ;; (define-key LaTeX-mode-map (kbd "C-c m") 'Tex-insert-math-symbol)
    ;; (define-key LaTeX-mode-map (kbd "C-c v") 'pdflatex-or-view)
    (define-key LaTeX-mode-map (kbd "C-c RET") 'Tex-insert-macro-at-point)
    (define-key LaTeX-mode-map (kbd "C-c a") 'ac-start)
    (define-key LaTeX-mode-map (kbd "C-c C-c") 'comment)
    (define-key LaTeX-mode-map (kbd "C-c C-x") 'uncomment)
    (define-key LaTeX-mode-map (kbd "C-c V") '(lambda () (interactive) (compile-latex) (view-pdf)))
    (define-key LaTeX-mode-map (kbd "C-c C-v") 'compile-latex)
    (define-key LaTeX-mode-map (kbd "C-c v") 'view-pdf))
  
  (defun compile-latex ()
    (interactive)
    (TeX-command "makepdf" 'TeX-master-file -1))

  (defun view-pdf ()
    (interactive)
    (TeX-command "makeview" 'TeX-master-file -1))
  
  (defun lian-latex-mode-hook ()
    "Lian's latex mode hook"
    (setq autopair-dont-activate t)
    (auto-fill-mode)
    (set-fill-column 70)
    (lian-latex-keys)
    (setq LaTeX-math-mode t)
    ;; (setq LaTeX-document-regexp "document\\|CJK\\*?")  ;; CJK 环境中不缩进
    (setq-default TeX-master nil)
    (setq TeX-electric-escape t)
    (setq TeX-auto-save t)
    (setq TeX-parse-self t)
    (setq preview-scale-function 1.5)
    (setq TeX-save-query   nil)
    (setq TeX-auto-untabify t) ;; 不使用 TAB字符缩进
    (setq TeX-newline-function 'newline-and-indent) ;;回车时自动缩进
    (setq TeX-command-default "make")
    (setq TeX-command-list
          '(;; Makefile strategy
            ;; one need to config a Makefile in your directory, it is quite easy. in this way,
            ;; the compile and view or clean actions are all controlled by yourself.
            ;; See at the end of this file for a reference Makefile
            ("makeview" "make view" TeX-run-TeX nil (latex-mode doctex-mode) :help "invoke make view")
            ("makepdf" "make pdf" TeX-run-TeX nil (latex-mode doctex-mode) :help "invoke make pdf")
            ("makeclean" "make clean" TeX-run-TeX nil (latex-mode doctex-mode) :help "invoke make clean")
            ("makecleanall" "make cleanall" TeX-run-TeX nil (latex-mode doctex-mode) :help "invoke make cleanall")
            ;; Other strategies, these command are not convininent for different document writing,
            ;; Makefile strategy is recommanded
            ;; if tex-master-file is a.tex then:
            ;; %t -- a.tex     %d -- a.dvi     %s -- a
            ;; %f -- a.ps
            ;; ("latex" "latex %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run latex")
            ;; ("dvi2pdf" "dvipdfmx -v %d" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run dvipdfmx")
            ;; ("xelatex" "xelatex -synctex=1 %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run Xetex")
            ;; ("edvi2ps" "dvips %d" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run dvips")
            ;; ("ps2pdf14" "ps2pdf14.bat %f" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run ps2pdf14.bat")
            ;; ("pdflatex" "pdflatex %s" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run pdflatex")
            ;; ("toc" "gbk2uni %s" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run gbk2uni")
            ;; ("BibTex" "bibtex8 %s" TeX-run-BibTeX nil t :help "Run BibTeX")
            ;; ("bibtex" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
            ;; ("viewpdf" "evince -w %s.pdf" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run Viewer")
            ;; ("lianlatex" "lian-latex %t %s.pdf" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LianLatex")
            ;; ("index" "makeindex %s" TeX-run-command nil t :help "Create index file")
            ;; ("clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
            ;; ("cleanall" "(TeX-clean t)" TeX-run-function nil t :help "Delete all generated files")
            ;; ("delete" "pdfclose --file %s.pdf" TeX-run-TeX nil (latex-mode doctex-mode) :help "Close pdf file")
            ))

    (TeX-PDF-mode t)
    (TeX-fold-mode t)
    (reftex-mode))
  
  (add-hook 'LaTeX-mode-hook 'lian-latex-mode-hook))

(defun Tex-insert-macro-at-point (symbol)
  (interactive
   (list (completing-read
          (concat "Macro (default " TeX-default-macro "): " TeX-esc)
          (TeX-symbol-list) nil nil nil
          'TeX-macro-history)))
  (mark-whole-sexp)
  (TeX-insert-macro symbol))

(eval-after-load "tex"
  '(lian-tex-settings))

(provide 'latex-settings)



;;;;; copy the follow lines to a new file renamed 'Makefile'
;;;;; remove the comment symbol ';;'
;; # begin of the Makefile 
;; # Makefile for managing your project, this file should put
;; # in the same directory with your tex files. Still, you can
;; # put it anywhere for your usage by readapting the path in
;; # this script

;; TEX = xelatex
;; doc = xfem_guide_cn

;; source = $(doc).tex
;; pdf = $(doc).pdf


;; all: pdf
;; cleanall: realclean
;; view: view-by-evince

;; pdf: $(pdf)
;; env = TEXINPUTS=./:./config:${TEXINPUTS}; export TEXINPUTS;

;; $(pdf): $(source) ./config/*.*
;; 	$(env) $(TEX) $<
;; 	$(env) $(TEX) $<

;; view-by-evince:
;; 	evince ${pdf} # add new options if you have a higher version evince

;; view-by-okular:
;; 	okular ${pdf} # add your own okular options for openning one relalization pdf file

;; clean:
;; 	rm -f *.aux *.log *.blg *.toc *.out *.lot tex4ht.ps *.4*
;; 	rm -f *.xref* *.lg *.idv *.out *.otc *.tmp tmp.*
;; 	rm -f $(doc).dvi $(doc).ps

;; realclean: clean
;; 	rm -f $(doc).pdf
;; 	rm -f *.html *.htm $(doc).css *.gif *.jpg
;; # end of the Makefile 

