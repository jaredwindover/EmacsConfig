;;coffee-mode
(eval-after-load "coffee-mode"
  '(progn
     (define-key coffee-mode-map [(meta R)] 'coffee-compile-buffer)
     (define-key coffee-mode-map (kbd "C-j") 'coffee-newline-and-indent)
     (define-key coffee-mode-map (kbd "C-c C-k") 'coffee-compile-file)))
