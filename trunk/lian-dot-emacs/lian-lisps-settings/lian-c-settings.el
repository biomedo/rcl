;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-12-30 16:13:30 Friday by lian>

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


(eal-define-keys
 `(c-mode-base-map)
 `(("C-c C-j" find-tag)
   ("C-c j" (lambda () (interactive)(find-tag "" t)))))

;; (setq compile-command "make -k -j 8 NODEP=1 VERS=opt")
(setq compile-command "make")

(defun lian-cc-mode-settings ()
  "lian Settings for `cc-mode'."
  (add-to-list 'auto-mode-alist '("\\.txx$" . c++-mode)))

(eval-after-load "cc-mode"
  `(lian-cc-mode-settings))

(provide 'lian-c-settings)
