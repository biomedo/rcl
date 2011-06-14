;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-06-14 13:37:45 Tuesday by lian>

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

(defun emaci-mode-toggle ()
  (interactive)
  (if emaci-mode (emaci-mode-off) (emaci-mode-on)))

(defvar last-lian-color-theme-idx 0 "lian's color theme index")

(defun toggle-lian-color-themes ()
  (interactive)
  (setq last-lian-color-theme-idx (mod (+ last-lian-color-theme-idx 1) (length lian-color-themes)))
  (color-theme-initialize)
  (funcall (nth last-lian-color-theme-idx lian-color-themes))
  (color-theme-adjust-hl-line-face)
  (message "%s is serving" (nth last-lian-color-theme-idx lian-color-themes)))

(defun toggle-bar-mode ()
  (interactive)
  (if menu-bar-mode (menu-bar-mode 0) (menu-bar-mode 1))
  (if tool-bar-mode (tool-bar-mode 0) (tool-bar-mode 1))
  (if scroll-bar-mode (scroll-bar-mode 0) (scroll-bar-mode 1)))

(defun disable-hl-underline-face ()
  (interactive)
  (setq hl-line-face 'hl-line-nonunderline-face)
  (setq hl-line-overlay nil)
  (color-theme-adjust-hl-line-face))


(provide 'lian-misc)
