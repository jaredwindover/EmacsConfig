(defun ibuffer-goto-end ()
	(interactive (previous-line))
	(goto-line (- (count-lines (point-min) (point-max)) 2)))

(defun ibuffer-goto-start ()
	(interactive (previous-line))
	(goto-line 3))

(defun ibuffer-previous-line ()
	(interactive) (previous-line)
	(if (<= (line-number-at-pos) 2) (ibuffer-goto-end)))

(defun ibuffer-next-line ()
	(interactive) (next-line)
	(if (>= (line-number-at-pos) (- (count-lines (point-min) (point-max)) 1))
			(ibuffer-goto-start)))

(defun on-ibuffer-mode ()
	(ibuffer-switch-to-saved-filter-groups "Main")
	(define-key ibuffer-mode-map (kbd "<up>") 'ibuffer-previous-line)
	(define-key ibuffer-mode-map (kbd "<down>") 'ibuffer-next-line)
	(define-key ibuffer-mode-map (kbd "<home>") 'ibuffer-goto-start)
	(define-key ibuffer-mode-map (kbd "<end>") 'ibuffer-goto-end)
	(define-key ibuffer-mode-map (kbd "C-<up>") 'ibuffer-backward-filter-group)
	(define-key ibuffer-mode-map (kbd "C-<down>") 'ibuffer-forward-filter-group)
	(define-key ibuffer-mode-map (kbd "<tab>") 'ibuffer-toggle-filter-group))

(add-hook 'ibuffer-mode-hook 'on-ibuffer-mode)
