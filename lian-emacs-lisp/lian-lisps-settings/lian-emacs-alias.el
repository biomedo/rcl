;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-03-02 18:20:25 Wednesday by lian>

;; This  file is free  software; you  can redistribute  it and/or
;; modify it under the terms of the GNU General Public License as
;; published by  the Free Software Foundation;  either version 3,
;; or (at your option) any later version.

;; This file is  distributed in the hope that  it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR  A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You  should have  received a  copy of  the GNU  General Public
;; License along with  GNU Emacs; see the file  COPYING.  If not,
;; write  to  the Free  Software  Foundation,  Inc., 51  Franklin
;; Street, Fifth Floor, Boston, MA 02110-1301, USA.

;-*- coding: utf-8 -*-
; emacs customization for command aliases

; shortening of often used commands

(defalias 'rn 'wdired-change-to-wdired-mode) ; rename file in dired

(defalias 'd 'dired-jump)
(defalias 'g 'grep)
(defalias 'gf 'grep-find)
(defalias 'fd 'find-dired)
(defalias 'ntr 'narrow-to-region)
(defalias 'lml 'list-matching-lines2)
(defalias 'dml 'delete-matching-lines)
(defalias 'dnml 'delete-non-matching-lines)
(defalias 'sl 'sort-lines)
(defalias 'dtw 'delete-trailing-whitespace)
(defalias 'lcd 'list-colors-display)
(defalias 'rb 'revert-buffer)
(defalias 'rs 'replace-string)
(defalias 'rr 'reverse-region)
(defalias 'lf 'load-file)

(defalias 'sh 'shell)
(defalias 'ps 'powershell)
(defalias 'fb 'flyspell-buffer)
(defalias 'sbc 'set-background-color)

(defalias 'rof 'recentf-open-files)

; elisp
(defalias 'eb 'eval-buffer)
(defalias 'er 'eval-region)
(defalias 'ed 'eval-defun)
(defalias 'ele 'eval-last-sexp)
(defalias 'eis 'elisp-index-search)

; modes
(defalias 'hm 'html-mode)
(defalias 'tm 'text-mode)
(defalias 'elm 'emacs-lisp-mode)
(defalias 'vbm 'visual-basic-mode)
(defalias 'vlm 'visual-line-mode)
(defalias 'wsm 'whitespace-mode)
(defalias 'om 'org-mode)
(defalias 'ssm 'shell-script-mode)
(defalias 'cc 'calc)

(defalias 'acm 'auto-complete-mode)

(defalias 'html6-mode 'lian-html6-mode)


;; lian personal

; insert text
(defalias 'ft 'fix-timestamp)
(defalias 'cr 'count-words-region-or-line)

(defalias 'irn 'insert-random-number)
(defalias 'irs 'insert-random-string)

(defalias 'iwe 'insert-word-entry)

(defalias 'mwe 'make-word-entry)
(defalias 'def 'insert-definition-entry)
(defalias 'mde 'make-definition-entry)

(defalias 'wsc 'wrap-span-code)
(defalias 'xmae 'lian-make-atom-entry)
(defalias 'il 'image-linkify)
(defalias 'fs 'full-size-img-linkify)
(defalias 'dr 'dehtmlize-region)

(defalias 'eol 'replace-eols-to-p)
(defalias 'dss 'desktop-settings-setup)

(defalias 'cp 'copy-to-register-1)
(defalias 'pt 'insert-register-content-1)

; text replace or transform
(defalias '& 'replace-html-chars)
;; (defalias 'r\" 'replace-straight-quotes-region)
(defalias 'r\" 'replace-straight-quotes)
(defalias '\\ 'escape-quotes-region)
(defalias '\[ 'remove-square-brackets)

(defalias 'k 'htmlize-keyboard-shortcut-notation)
(defalias 'cpr 'compact-region)

(defalias 'l 'lian-file-linkify)
(defalias 'c 'lian-cite)
(defalias 'lb 'listify-block)
(defalias 'hb 'htmlize-block)
(defalias 'db 'dehtmlize-block)
(defalias 'mht 'make-html-table)
(defalias 'z 'amazon-linkify)
(defalias 'asl 'amazon-search-linkify)
(defalias 'tls 'toggle-line-spacing)

(defalias 'yl 'youtube-linkify)
(defalias 'ysl 'youtube-search-linkify)
(defalias 'dsc 'delete-secondlife-cache)

(defalias 'w 'wrap-span)

(defalias '~ 'make-backup)
(defalias 'mb 'make-blogger-entry)


(defun i1 ()
  "Set input method to chinese-py."
  (interactive)
  (set-input-method 'chinese-py)
)

(defun i2 ()
  "Set input method to chinese-py-b5."
  (interactive)
  (set-input-method 'chinese-py-b5)
)

(provide 'lian-emacs-alias)
