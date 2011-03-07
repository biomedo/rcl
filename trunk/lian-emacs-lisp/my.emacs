;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-03-04 12:27:23 Friday by lian>

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

;; all the lian-personal path settings stored in lian-info
(require 'lian-info)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; c++ header file path and tags table and source path 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq user-head-file-dir (list "."))
(setq user-head-file-dir (append user-head-file-dir lian-head-file-dir))
(setq tags-table-list lian-tags-table-list)
(global-set-key (kbd "<C-f10>") 'find-tag)
(global-set-key (kbd "<C-f11>") (lambda () (interactive)(find-tag "" t)))
(global-set-key (kbd "<M-f10>") 'tags-apropos)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; alias the emacs command
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'lian-emacs-alias)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Jump to my working dir
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-prefix-command 'ctl-j-map)
(global-set-key (kbd "C-j") 'ctl-j-map)
(define-key-list
  global-map
  `(("C-j e" (lambda () (interactive)(dired lian-emacs-lisp-dir)))
    ("C-j h" (lambda () (interactive)(dired "~")))
    ("C-j d" (lambda () (interactive)(dired (getenv "LIAN_DOC_LYXTEX_DIR"))))
    ("C-j s" bookmark-set)
    ("C-j o" bookmark-bmenu-list)
    ("C-j 1" (lambda () (interactive)(dired (nth 0 lian-working-dir))))
    ("C-j 2" (lambda () (interactive)(dired (nth 1 lian-working-dir))))
    ("C-j 3" (lambda () (interactive)(dired (nth 2 lian-working-dir))))
    ("C-j 4" (lambda () (interactive)(dired (nth 3 lian-working-dir))))
    ("C-j 5" (lambda () (interactive)(dired (nth 4 lian-working-dir))))
    ("C-j 6" (lambda () (interactive)(dired (nth 5 lian-working-dir))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Matlab settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'matlab-settings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; iBuffer settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'wuxch-buffer-settings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; lyx settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq auto-mode-alist (cons '("\\.lyx\\'" . latex-mode) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; tex settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'latex-settings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; edit-misc extend settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'edit-misc-ex)
