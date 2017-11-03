;;Keyboard bindings
(global-set-key (kbd "C-c o") 'ff-find-other-file)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-j") 'semantic-ia-complete-symbol)
(global-set-key (kbd "C-c ?") 'semantic-ia-complete-symbol-menu)
(global-set-key (kbd "C-m") 'newline-and-indent)
(global-set-key (kbd "C-S-SPC") 'hidden-mode-line-mode)
(global-set-key (kbd "<Scroll_Lock>") 'scroll-lock-mode)
(global-set-key (kbd "C-x C-b") 'ibuffer) ; improved buffer window
(global-set-key (kbd "M-0") 'kill-this-buffer) ; kill the current buffer
(global-set-key (kbd "C-<tab>") 'next-buffer) ; switch to next buffer, also C-x right
(global-set-key (kbd "C-<iso-lefttab>") 'previous-buffer) ; switch to next buffer, also C-x right
(global-set-key (kbd "C-S-<tab>") 'previous-buffer) ; switch to next buffer, also C-x right
(global-set-key (kbd "C-;") 'aj-toggle-fold)

;; easy keys to split window. Key based on ErgoEmacs keybinding
(global-set-key (kbd "M-1") 'split-window-horizontally) ; split pane top/bottom
(global-set-key (kbd "M-3") 'delete-other-windows) ; expand current pane
(global-set-key (kbd "M-4") 'split-window-vertically) ; split pane top/bottom
(global-set-key (kbd "M-2") 'delete-window) ; close current pane

(global-set-key (kbd "M-<up>") 'move-line-up) ; move the current line up
(global-set-key (kbd "M-<down>") 'move-line-down) ; move the current line up

(global-set-key (kbd "M-s") 'other-window) ; cursor to other pane
(global-set-key (kbd "M-S")
								(lambda ()
									(interactive)
									(other-window -1))) ; cursor to other pane backwards

;; rebind keys in modes that attempt to change them
(defun rebind-window-commands (mode-hook)
	(add-hook mode-hook
						(lambda () (progn
												 (local-set-key (kbd "M-s") 'other-window)
												 (local-set-key (kbd "M-1") 'split-window-horizontally)
												 (local-set-key (kbd "M-3") 'delete-other-windows)
												 (local-set-key (kbd "M-4") 'split-window-vertically)
												 (local-set-key (kbd "M-2") 'delete-window)
												 (global-set-key (kbd "M-S")
																				 (lambda ()
																					 (interactive)
																					 (other-window -1)))
												 ))))

(mapc 'rebind-window-commands
			'(eshell-mode-hook
				dired-mode-hook
				ibuffer-mode-hook
				diff-mode-hook))
