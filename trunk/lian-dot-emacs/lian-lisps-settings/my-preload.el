;; -*- Emacs-Lisp -*-

;; Time-stamp: <2013-04-28 00:22:50 Sunday by lian>

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

;; define my own emacs path
(defconst lian-emacs-lisp-dir (getenv "LIAN_EMACS_LISP_DIR"))

;; add my own path to the load path
(defconst lian-my-lisps-path  (concat lian-emacs-lisp-dir "/lian-lisps-settings/") "lian lisps settings")
(defconst lian-lisps-path     (concat lian-emacs-lisp-dir "/lian-lisps/") "lian lisps")
(my-add-subdirs-to-load-path lian-my-lisps-path)
(my-add-subdirs-to-load-path lian-lisps-path)

;; persistent-path
(require 'lian-dired-settings)


(provide 'my-preload)
