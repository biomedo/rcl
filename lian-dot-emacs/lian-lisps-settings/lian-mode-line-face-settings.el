;; -*- Emacs-Lisp -*-

;; Time-stamp: <2013-04-08 22:11:26 Monday by lian>

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

(defun lian-mode-line-face-settings ()
  "Face settings for `mode-line'."
  (unless window-system
      (progn        
        (set-face-foreground 'mode-line "black")
        (set-face-background 'mode-line "green")
        (set-face-foreground 'mode-line-inactive "black")
        (set-face-background 'mode-line-inactive "white")
        (set-face-foreground 'mode-line-buffer-id "blue")
        (set-face-background 'mode-line-buffer-id "yellow")
        (set-face-foreground 'emaci-mode-line-face "white")
        (set-face-background 'emaci-mode-line-face "red")
        (set-face-foreground 'which-func "white")
        (set-face-background 'which-func "red"))))

(eval-after-load "faces"
  `(lian-mode-line-face-settings))

(provide 'lian-mode-line-face-settings)
