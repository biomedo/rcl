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

;; can not work when default-major-mode is text-mode
;; (am-add-hooks
;;   `(text-mode-hook)
;;   'turn-on-orgstruct)

(require 'org-install)

(defun lian-org-settings ()
  "Settings for `org'."

  (defun lian-org-hook-settings ()
    "Hook settings for `org'."
    (auto-fill-mode)
    (set-fill-column 70))
  (add-hook 'org-mode-hook 'lian-org-hook-settings))


(eval-after-load "org"
  `(lian-org-settings))

(provide 'lian-org-settings)
