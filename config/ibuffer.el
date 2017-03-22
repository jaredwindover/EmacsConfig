;; ibuffer mode hook
(add-hook 'ibuffer-mode-hook (lambda ()(ibuffer-switch-to-saved-filter-groups "Main")))
