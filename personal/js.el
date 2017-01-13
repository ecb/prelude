(defun ecb-js-mode-hook ()
  (setq indent-tabs-mode t tab-width 4 js-indent-level 4)
  (whitespace-mode 0))

(add-hook 'js-mode-hook 'ecb-js-mode-hook)
(provide 'js)
;;; js.el ends here
