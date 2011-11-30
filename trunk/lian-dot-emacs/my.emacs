;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-11-29 15:25:04 Tuesday by lian>

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
(require 'lian-misc)

;; personal information
(setq user-mail-address "weidong.lian@gmail.com")
(setq user-full-name    "lianweidong")


;; c++ header file path and tags table and source path
(setq user-head-file-dir (list "."))
(setq user-head-file-dir (append user-head-file-dir lian-head-file-dir))


;; Global key-binding
(eal-define-keys-commonly
 global-map
 `(("C-M-j"     goto-line)
   ("C-x F"     find-dired)
   ;; ("C-u"       cua-scroll-down)
   ("<f9>"      kill-this-buffer)
   ;; ("<f8>"      other-frame)
   ("<f8>"      sb-toggle-keep-buffer)))
;; (global-set-key (kbd "<f8>") 'sb-toggle-keep-buffer)


;; CTags, Etags table and settings
(setq tags-table-list lian-tags-table-list)
(global-set-key (kbd "<C-f10>") 'find-tag)
(global-set-key (kbd "<C-f11>") (lambda () (interactive)(find-tag "" t)))
(global-set-key (kbd "<M-f10>") 'tags-apropos)

;; redefined ahie's corresponding settings
(require 'lian-lisp-interaction-mode-settings)
(require 'lian-auto-complete-settings)
(require 'lian-ido-settings)
(require 'lian-multi-term-settings)
(require 'lian-sourcepair-settings)
(require 'lian-select-buffer-settings)
(require 'lian-isearch-face-settings)
(require 'lian-yasnippet-settings)
(require 'lian-vc-settings)
(require 'lian-c-settings)
(require 'lian-emaci-settings)
(require 'lian-org-settings)
(require 'lian-svn-settings)


;; Matlab settings
(require 'matlab-settings)

;; iBuffer settings
(require 'wuxch-buffer-settings)

;; lyx settings
;; (setq auto-mode-alist (cons '("\\.lyx\\'" . latex-mode) auto-mode-alist))

;; tex settings
(require 'latex-settings)

;; edit-misc extend settings
(require 'edit-misc-ex)

;; bookmark-settings
(require 'bookmark-settings)

;; alias the emacs command
(require 'lian-emacs-alias)

;; Frequently-used command and Jump to my working dir
;; Put this C-j settings in the end to avoid being rewritten.
(define-prefix-command 'ctl-j-map)
(global-set-key (kbd "C-j") 'ctl-j-map)
(define-key-list
  global-map
  `(("C-j e" (lambda () (interactive)(dired lian-emacs-lisp-dir)))
    ("C-j h" (lambda () (interactive)(dired "~")))
    ("C-j d" (lambda () (interactive)(dired (getenv "LIAN_DOC_LYXTEX_DIR"))))
    ("C-j C-c" cua-set-rectangle-mark)
    ("C-j C-t" toggle-lian-color-themes)
    ("C-j M-t" toggle-bar-mode)
    ("C-j C-d" dired-jump)
    ("C-j C-s" save-buffer-sb)
    ("C-j s" switch-to-scratch)
    ("C-j S" bookmark-set)
    ("C-j m" bookmark-bmenu-list)
    ("C-j C-b" ibuffer)
    ("C-j b" ido-switch-buffer)
    ("C-j C-f" ido-find-file)
    ("C-j f" emaci-mode-toggle)
    ;; ("C-j C-j" execute-extended-command)
    ("C-j C-j" emaci-mode-toggle)
    ("C-j C-v" svn-status)
    ;; ("C-j j" goto-line)
    ("C-j j" execute-extended-command)
    ("C-j C-o" delete-blank-lines)
    ("C-j l" other-frame)
    ("C-j C-l" make-frame-command)
    ("C-j o" other-window)
    ("C-j 0" delete-window)
    ("C-j 1" delete-other-windows)
    ("C-j 2" split-window-vertically)
    ("C-j 3" split-window-horizontally)
    ("C-j k" kill-this-buffer)
    ("C-j C-k" kill-this-buffer)
    ("C-j w" copy-sexp)
    ("C-j C-w" kill-whole-sexp)
    ("C-j C-y" delete-and-past-sexp)
    ("C-j M-w" insert-cur-line)
    ("C-j C-e" multi-term)
    ("C-j C-n" multi-term-next)
    ("C-j C-p" multi-term-prev)
    ("C-j C-i" indent-whole-buffer)
    ("C-j r" (lambda () (interactive)(dired (getenv "DEVROOT"))))
    ("C-j C-r" recentf-open-files-complete-sb)
    ("C-j 4" (lambda () (interactive)(dired (nth 0 lian-working-dir))))
    ("C-j 5" (lambda () (interactive)(dired (nth 1 lian-working-dir))))
    ("C-j 6" (lambda () (interactive)(dired (nth 2 lian-working-dir))))
    ("C-j 7" (lambda () (interactive)(dired (nth 3 lian-working-dir))))
    ("C-j 8" (lambda () (interactive)(dired (nth 1 lian-working-dir))))
    ("C-j 9" (lambda () (interactive)(dired (nth 2 lian-working-dir))))))


;; theme misc: faces and fonts etc.
(require 'lian-theme-settings)

(lian-theme-misc)
