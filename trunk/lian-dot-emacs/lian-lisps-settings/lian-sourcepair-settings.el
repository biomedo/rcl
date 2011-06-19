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
 `(("C-c C-i" sourcepair-load)))

(defun lian-sourcepair-settings ()
  "Lian Settings for `sourcepair'."
  ;; (setq sourcepair-source-path '( "." "../src"))
  (setq sourcepair-source-path (append sourcepair-source-path lian-source-file-dir))
  ;; (setq sourcepair-header-path user-head-file-dir)
  (setq sourcepair-source-extensions (append sourcepair-source-extensions '(".txx"))))
  ;; (setq sourcepair-recurse-ignore '("CVS" "bin" "lib" "Obj" "Debug" "Release" ".svn")))

(eval-after-load "sourcepair"
  `(lian-sourcepair-settings))

(provide 'lian-sourcepair-settings)
