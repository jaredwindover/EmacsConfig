(require 'lsp)
(require 'lsp-java)

(add-hook 'java-mode-hook (lambda () (setq indent-tabs-mode nil)))
;; Too slow to startup for Franklin
;(add-hook 'java-mode-hook 'lsp)
