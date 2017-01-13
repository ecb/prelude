(require 'go-autocomplete)
(require 'go-eldoc)

(exec-path-from-shell-copy-env "GOPATH")

(defun my-go-mode-hook ()
  (whitespace-mode 0)
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  )

(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook 'my-go-mode-hook)
