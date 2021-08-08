(require 'auto-complete-config)

;;; Code:
(ac-config-default)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'clojure-mode-hook #'smartparens-mode)
(define-key (current-global-map) (kbd "H-~") (kbd "~"))
