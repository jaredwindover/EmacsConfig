;;Latex settings
(setq LaTeX-verbatim-environments-local '("lstlisting"))
(add-hook 'latex-mode-hook 'latex-electric-env-pair-mode)
(eval-after-load 'latex '(define-key LaTeX-mode-map (kbd "C-c C-o") 'tex-latex-block))
