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


(defun lian-theme-misc ()
  (interactive)
  (message "lian-theme-misc is loading")
  ;; disable highlight-underline-face
  (disable-hl-underline-face)
  ;; my fonts
  ;; 中文字体在fedora或者其它系统上总有怪现象，解决思路如下：
  ;; 1. DejaVu Sans Mono 下载放在你的~/.fonts
  ;; 2. 下载文泉驿正黑也到上面那个目录
  ;; 3. cd ~/.fonts; mkfontscale; mkfontdir; fc-cache;
  ;; 4. 下载那些字体包之后要把其中的*.ttf,*.ttc拷贝到~/.fonts
  ;; 5. 这样配合下面脚本基本上不会出问题字体就很好看了.
  (setq my-latin-font "DejaVu Sans Mono")
  (setq my-chinese-font "微软雅黑")
  (setq my-latin-size 14)
  (setq my-chinese-size 17)
  (huangq-set-font my-latin-size my-chinese-size))

(defun lian-after-make-frame-settings (frame)
  (setq color-theme-is-global nil)
  (select-frame frame)
  (lian-color-theme))


(defun lian-color-theme ()
  (interactive)
  (color-theme-ahei)
  (lian-theme-misc))

(add-hook 'after-make-frame-functions 'lian-after-make-frame-settings)


(provide 'lian-theme-settings)
