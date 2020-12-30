(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(powerline-default-theme)

(defvar-local hidden-mode-line-mode nil)
(defvar-local hide-mode-line nil)
(define-minor-mode hidden-mode-line-mode
  "Minor mode to hide the mode-line in the current buffer."
  :init-value nil
  :global nil
  :variable hidden-mode-line-mode
  :group 'editing-basics
  (if hidden-mode-line-mode
      (setq hide-mode-line mode-line-format
            mode-line-format nil)
    (setq mode-line-format hide-mode-line
          hide-mode-line nil))
  (force-mode-line-update)
  ;; Apparently force-mode-line-update is not always enough to
  ;; redisplay the mode-line
  (redraw-display)
  (when (and (called-interactively-p 'interactive)
             hidden-mode-line-mode)
    (run-with-idle-timer
     0 nil 'message
     (concat "Hidden Mode Line Mode enabled.  "
             "Use M-x hidden-mode-line-mode to make the mode-line appear."))))

;; If you want to hide the mode-line in all new buffers
;; (add-hook 'after-change-major-mode-hook 'hidden-mode-line-mode)

(set `frame-inhibit-implied-resize t)

(defun split-window-right-ignore (&optional size)
  (if (car size) size (list (/ (window-total-width) 2))))

(advice-add 'split-window-right :filter-args
            'split-window-right-ignore)

;; A small minor mode to use a big fringe
(defvar bzg-big-fringe-mode nil)
(define-minor-mode bzg-big-fringe-mode
  "Minor mode to use big fringe in the current buffer."
  :init-value nil
  :global t
  :variable bzg-big-fringe-mode
  :group 'editing-basics
  (if (not bzg-big-fringe-mode)
      (set-fringe-style nil)
    (set-fringe-mode
     (/ (- (frame-pixel-width)
           (* 100 (frame-char-width)))
        2))))

(defun check-windows ()
	(if (delq nil
						(let ((cw (min (/ (frame-width) 2)
													 100)))
							(mapcar (lambda(w)
												(<
												 (- (window-width w)
														cw)
												 10))
											(window-list))))
			(bzg-big-fringe-mode 0)
		(bzg-big-fringe-mode 1)))

;; A small minor mode to use a big fringe
(defvar resp-big-fringe-mode nil)
(define-minor-mode resp-big-fringe-mode
  "Minor mode to use responsive big-fringe-mode."
  :init-value nil
  :global t
  :variable resp-big-fringe-mode
  :group 'editing-basics
  (if (not resp-big-fringe-mode)
			(progn
				(remove-hook 'window-configuration-change-hook
										 'check-windows)
				(bzg-big-fringe-mode 0)
				)
		(progn
			(add-hook 'window-configuration-change-hook
								'check-windows)
			(check-windows)
			)))
