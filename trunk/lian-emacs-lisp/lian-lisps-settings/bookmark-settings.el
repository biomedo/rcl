;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-06-11 15:42:53 Saturday by lian>

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


(setq bookmark-sort-flag nil)


(defun gotoline-and-open (line-number)
  "go to a given line and then open the corresponding bookmark"
  (interactive "nEnter line number:")
  (goto-line line-number)
  (bookmark-bmenu-this-window))


(defun my-bookmark-mode-hook ()
  (linum-mode 1)
  (define-key bookmark-bmenu-mode-map (kbd "g") 'gotoline-and-open)
  (define-key bookmark-bmenu-mode-map (kbd "i") 'gotoline-and-open)
  (define-key bookmark-bmenu-mode-map (kbd "j") 'ignore)
  (define-key bookmark-bmenu-mode-map (kbd "j") 'next-line)
  (define-key bookmark-bmenu-mode-map (kbd "k") 'ignore)
  (define-key bookmark-bmenu-mode-map (kbd "k") 'previous-line))

(add-hook 'bookmark-bmenu-mode-hook 'my-bookmark-mode-hook)


(provide 'bookmark-settings)

