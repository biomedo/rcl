;; -*- Emacs-Lisp -*-

;; Time-stamp: <2014-03-25 15:41:53 Tuesday by weidong>

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


;; (eal-define-keys
 ;; `(c-mode-base-map)
 ;; `(("C-c C-j" find-tag)
   ;; ("C-c j" (lambda () (interactive)(find-tag "" t)))))

;; (setq compile-command "make -k -j 8 NODEP=1 VERS=opt")
(setq compile-command "make")

(defun lian-cc-mode-settings ()
  "lian Settings for `cc-mode'."
  (require 'google-c-style)
  (defun lian-c-mode-common-hook-settings ()
    "Settings for `c-mode-common-hook'."
    (c-set-style "awk")
    ;; 饥饿的删除键
    ;; (c-toggle-hungry-statey-state)
    ;; 对subword进行操作，而不是整个word
    (subword-mode t)    
    ;; code indentation
    (setq c-basic-offset 2)
    (c-set-offset 'substatement-open 0)
    ;; other customizations can go here    
    (setq c++-tab-always-indent nil)
    (setq c-basic-offset 2)                  ;; Default is 2
    (setq c-indent-level 2)                  ;; Default is 2    
    (setq tab-stop-list '(2 4 6 8 10 12 14 16))
    (setq tab-width 2)
    (setq indent-tabs-mode t)  ; use spaces only if nil    
    (message "lian-c-mode-common-hook-settings is loading"))
    

  (add-hook 'c-mode-common-hook 'lian-c-mode-common-hook-settings)
  (add-hook 'c-mode-common-hook 'google-set-c-style)
  (add-to-list 'auto-mode-alist '("\\.glsl$" . c++-mode))
  (add-to-list 'auto-mode-alist '("\\.txx$" . c++-mode)))

(eval-after-load "cc-mode"
  `(lian-cc-mode-settings))

(provide 'lian-c-settings)
