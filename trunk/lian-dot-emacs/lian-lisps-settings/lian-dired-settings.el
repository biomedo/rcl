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



(defun lian-dired-settings ()
  "lian Settings for `dired'."
  (setq dired-listing-switches "-alh")


  (defun lian-dired-keys ()
    "dired-mode中的快捷键定义"
    (eal-define-keys-commonly
     dired-mode-map
     `(("C-q"         (lambda () (interactive)(if dired-lis-mode (dired-lis-off) (ywb-dired-quickview))))
       ("e"           dired-smart-shell-command)
       ("x"           dired-do-shell-command)
       ("X"           dired-do-flagged-delete)
       ("G"           diredp-do-grep)
       ("."           ywb-dired-filter-extension)
       ("C-c C-r"     (lambda () (interactive)(find-dired default-directory "-name '#*#' -or -name '*~'"))))))

  (defun lian-dired-mode-hook-settings ()
    "Settings for `dired-mode-hook'."
    (lian-dired-keys))

  (add-hook 'dired-mode-hook 'lian-dired-mode-hook-settings))

(eval-after-load "dired"
  `(lian-dired-settings))

(provide 'lian-dired-settings)
