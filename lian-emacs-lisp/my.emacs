;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-01-29 02:38:03 Saturday by lian>

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
;; User defined information
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; persistent-path
(defconst lian-source-file-dir
  (list "/glouton/struct/lian/develop/Xfem/Xfem/Xfem/Xfem"
        "/glouton/struct/lian/develop/Xext/Xext/Xext"
        "/glouton/struct/lian/develop/Xext/Octree/Octree"
        "/glouton/struct/lian/develop/Xext/OctreeInterface/OctreeInterface"
        "/glouton/struct/lian/develop/SolverInterfaces/SolverBase/SolverBase"
        "/glouton/struct/lian/develop/SolverInterfaces/SuperLu/SuperLu"
        "/glouton/struct/lian/develop/SolverInterfaces/Lapack/Lapack"
        "/glouton/struct/lian/develop/SolverInterfaces/Taucs/Taucs"
        "/glouton/struct/lian/develop/SolverInterfaces/PetscSeq/PetscSeq"
        "/glouton/struct/lian/develop/SolverInterfaces/NonLinearSolver/NonLinearSolver"
        "/glouton/struct/lian/develop/Trellis/AOMD/AOMD/src"
        "/glouton/struct/lian/develop/Trellis/AOMD/Util/Util/src"
        "/glouton/struct/lian/develop/MeshMachine/LinearAlgebra/LinearAlgebra"
        "/glouton/struct/lian/develop/Applis/Homog/Homog"
        "/glouton/struct/lian/develop/Applis/ITK_Utility/ITK_Utility"))
;; my include path
(defconst lian-head-file-dir
  (list "/glouton/struct/lian/develop/Xfem/Xfem/include/"
        "/glouton/struct/lian/develop/Applis/Homog/include"
        "/glouton/struct/lian/develop/Applis/ITK_Utility/include"
        "/glouton/struct/lian/develop/Xext/Xext/include"
        "/glouton/struct/lian/develop/Xext/Octree/include"
        "/glouton/struct/lian/develop/Xext/OctreeInterface/include"
        "/glouton/struct/lian/develop/SolverInterfaces/SolverBase/include"
        "/glouton/struct/lian/develop/SolverInterfaces/SuperLu/include"
        "/glouton/struct/lian/develop/SolverInterfaces/Lapack/include"
        "/glouton/struct/lian/develop/SolverInterfaces/Taucs/include"
        "/glouton/struct/lian/develop/SolverInterfaces/PetscSeq/include"
        "/glouton/struct/lian/develop/SolverInterfaces/NonLinearSolver/include"
        "/glouton/struct/lian/develop/Trellis/AOMD/include"
        "/glouton/struct/lian/develop/Trellis/Util/include"
        "/glouton/struct/lian/develop/Trellis/model/include"
        "/glouton/struct/lian/develop/MeshMachine/LinearAlgebra/include"
        "/glouton/struct/lian/develop/Applis/Physics/include"))

(defconst lian-tags-table-list
  (list "/glouton/struct/lian/develop/Xfem/Xfem/tags"
        "/glouton/struct/lian/develop/Xext/Xext/tags"
        "/glouton/struct/lian/develop/Xext/Octree/tags"
        "/glouton/struct/lian/develop/Xext/OctreeInterface/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/SolverBase/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/SuperLu/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/Lapack/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/Taucs/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/PetscSeq/tags"
        "/glouton/struct/lian/develop/SolverInterfaces/NonLinearSolver/tags"
        "/glouton/struct/lian/develop/Trellis/AOMD/tags"
        "/glouton/struct/lian/develop/MeshMachine/LinearAlgebra/tags"
        "/glouton/struct/lian/develop/Applis/Homog/tags"
        "/glouton/struct/lian/develop/Applis/ITK_Utility/tags"))

(setq user-head-file-dir (list "." "../include"))
(setq user-head-file-dir (append user-head-file-dir lian-head-file-dir))
(setq tags-table-list '(lian-tags-table-list))


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
