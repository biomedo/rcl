;;; configures and codes for auto revert mode
(require 'autorevert)

;; Text-mode auto-revert
(defun log-auto-revert-settings ()
  "lian Settings for `auto-revert-mode'."
  (interactive)
  (setq auto-revert-interval 4)
  (auto-revert-tail-mode 1))

(provide 'lian-auto-revert-settings)
