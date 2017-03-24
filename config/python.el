;; Python mode hook(when (require 'flycheck nil t)
(add-hook 'elpy-mode-hook 'flycheck-mode)
(add-hook 'elpy-mode-hook (lambda () (flymake-mode -1)))
(add-hook 'python-mode-hook 'elpy-mode)
