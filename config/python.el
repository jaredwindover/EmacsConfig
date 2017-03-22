;; Python mode hook(when (require 'flycheck nil t)
(add-hook 'elpy-mode-hook 'flycheck-mode)
(add-hook 'python-mode-hook 'elpy-mode)
