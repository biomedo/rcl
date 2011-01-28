;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-01-18 00:31:53 Tuesday by lian>

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Matlab
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'matlab-mode "matlab.el" "Enter Matlab mode." t) 
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist)) 
(autoload 'matlab-shell "matlab.el" "Interactive Matlab mode." t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;AUCTeX 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (load "auctex.el" nil t t)
;; (load "tex-site.el" nil t t)
;; (load "preview-latex.el" nil t t)

;; (setq TeX-electric-escape t)
;; (setq LaTeX-math-mode t)

;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeX-master nil)

;; (setq TeX-auto-untabify t) ;; 不使用 TAB字符缩进
;; (setq LaTeX-document-regexp "document\\|CJK\\*?")  ;; CJK 环境中不缩进
;; (setq TeX-newline-function 'newline-and-indent) ;;回车时自动缩进

;; ;; (add-hook 'LaTeX-mode-hook #'LaTeX-install-toolbar)
;; (add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)

;; (autoload 'LaTeX-preview-setup "preview")
;; ;; (add-hook 'LaTeX-mode-hook #'LaTeX-preview-setup)

;; (autoload 'reftex-mode "reftex" "RefTeX Minor Mode" t)
;; (autoload 'turn-on-reftex "reftex" "RefTeX Minor Mode" nil)
;; (autoload 'reftex-citation "reftex-cite" "Make citation" nil)
;; (autoload 'reftex-index-phrase-mode "reftex-index" "Phrase mode" t)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)                        
;; (setq reftex-plug-into-AUCTeX t)

;; (setq reftex-revisit-to-follow t
;;       reftex-auto-recenter-toc t)
;; (add-hook 'TeX-mode-hook
;;           (lambda ()
;;             (setq reftex-plug-into-AUCTeX t)
;;             (turn-on-reftex)
;;             ))

;;把beamer的frametitle也放入reftex目录缓冲中，但需要把\frametitle写在行首
;; (setq reftex-section-levels
;;       '(("part" . 0) ("chapter" . 1) ("section" . 2) 
;; ("subsection" . 3)
;;         ("frametitle" . 4) ("subsubsection" . 4) 
;; ("paragraph" . 5)
;;         ("subparagraph" . 6) ("addchap" . -1) ("addsec" . -2)))

;;bibtex的设置
;; (setq bibtex-autokey-names 1
;;       bibtex-autokey-names-stretch 1
;;       bibtex-autokey-name-separator "-"
;;       bibtex-autokey-additional-names "-et.al."
;;       bibtex-autokey-name-case-convert 'identity
;;       bibtex-autokey-name-year-separator "-"
;;       bibtex-autokey-titlewords-stretch 0
;;       bibtex-autokey-titlewords 0
;;       bibtex-maintain-sorted-entries 'plain
;;       bibtex-entry-format '(opts-or-alts numerical-fields))


(provide 'lian-lisp-settings)
