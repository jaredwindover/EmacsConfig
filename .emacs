(setq default-directory
			"C:/Users/Redirection/windoj9")
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;;;Package system
(require 'package)
(add-to-list 'package-archives
						 '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
						 '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(setq inhibit-startup-echo-area-message "windoj9")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
	 ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(c-basic-offset 2)
 '(coffee-tab-width 2)
 '(comment-style (quote box))
 '(compilation-message-face (quote default))
 '(custom-safe-themes
	 (quote
		("a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" "0b2e94037dbb1ff45cc3cd89a07901eeed93849524b574fa8daa79901b2bfdcf" default)))
 '(fci-rule-color "#20240E")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
	 (quote
		(("#20240E" . 0)
		 ("#679A01" . 20)
		 ("#4BBEAE" . 30)
		 ("#1DB4D0" . 50)
		 ("#9A8F21" . 60)
		 ("#A75B00" . 70)
		 ("#F309DF" . 85)
		 ("#20240E" . 100))))
 '(ibuffer-saved-filter-groups
	 (quote
		(("Main"
			("PowerShell"
			 (filename . "\\.ps1$"))
			("dired"
			 (used-mode . dired-mode))
			("BASH"
			 (filename . "\\.sh$"))
			("Python"
			 (filename . "\\.py$"))
			("YAML"
			 (filename . "\\.yaml$"))
			("Emacs"
			 (name . "\\*.*\\*"))
			("Test"
			 (filename . ".*[Tt]est.*"))
			("PHP"
			 (filename . ".*\\.php$"))
			("JSON"
			 (filename . ".*\\.json$"))
			("JS"
			 (filename . ".*\\.js$"))
			("TMPL"
			 (filename . ".\\.tmpl$"))
			("CSS"
			 (filename . ".*\\.css$"))))))
 '(ibuffer-saved-filters
	 (quote
		(("gnus"
			((or
				(mode . message-mode)
				(mode . mail-mode)
				(mode . gnus-group-mode)
				(mode . gnus-summary-mode)
				(mode . gnus-article-mode))))
		 ("programming"
			((or
				(mode . emacs-lisp-mode)
				(mode . cperl-mode)
				(mode . c-mode)
				(mode . java-mode)
				(mode . idl-mode)
				(mode . lisp-mode)))))))
 '(ibuffer-show-empty-filter-groups nil)
 '(inhibit-startup-echo-area-message "jared")
 '(js-indent-level 2)
 '(magit-diff-use-overlays nil)
 '(org-insert-mode-line-in-empty-file t)
 '(package-selected-packages
	 (quote
		(circe powershell centered-cursor-mode yaml-mode monokai-theme smart-tabs-mode)))
 '(php-mode-coding-style (quote wordpress))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(tab-width 2)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
	 (quote
		((20 . "#F92672")
		 (40 . "#CF4F1F")
		 (60 . "#C26C0F")
		 (80 . "#E6DB74")
		 (100 . "#AB8C00")
		 (120 . "#A18F00")
		 (140 . "#989200")
		 (160 . "#8E9500")
		 (180 . "#A6E22E")
		 (200 . "#729A1E")
		 (220 . "#609C3C")
		 (240 . "#4E9D5B")
		 (260 . "#3C9F79")
		 (280 . "#A1EFE4")
		 (300 . "#299BA6")
		 (320 . "#2896B5")
		 (340 . "#2790C3")
		 (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(web-mode-markup-indent-offset 2)
 '(weechat-color-list
	 (unspecified "#272822" "#20240E" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(whitespace-style
	 (quote
		(face tabs spaces trailing lines space-before-tab newline empty space-mark tab-mark newline-mark)))
 '(x-stretch-cursor t))

(load-theme 'monokai t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:background "#272822")))))

;;file -> mode associations
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.fish\\'" . fish-mode))
(add-to-list 'auto-mode-alist '("\\.lua\\'" . lua-mode))

;;coffee-mode
(eval-after-load "coffee-mode"
  '(progn
     (define-key coffee-mode-map [(meta R)] 'coffee-compile-buffer)
     (define-key coffee-mode-map (kbd "C-j") 'coffee-newline-and-indent)
     (define-key coffee-mode-map (kbd "C-c C-k") 'coffee-compile-file)))

;;Latex settings
(setq LaTeX-verbatim-environments-local '("lstlisting"))
(add-hook 'latex-mode-hook 'latex-electric-env-pair-mode)
(eval-after-load 'latex '(define-key LaTeX-mode-map (kbd "C-c C-o") 'tex-latex-block))

;; Before save
(add-hook 'before-save-hook 'whitespace-cleanup)

(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)

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
(add-hook 'after-change-major-mode-hook 'hidden-mode-line-mode)

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

;; Always use these settings
(setq default-cursor-type 'hbar)
;;(desktop-save-mode 1)
(setq column-number-mode t)

;; Always enable these modes
(hidden-mode-line-mode 1)
(bzg-big-fringe-mode 1)
(electric-pair-mode 1)
(show-paren-mode 1)
(smart-tabs-mode 1)
(global-hl-line-mode 1)
(resp-big-fringe-mode 1)
(centered-cursor-mode 1)

;; Web mode hook
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'css-mode-hook 'linum-mode)

;;Keyboard bindings
(global-set-key (kbd "C-c o") 'ff-find-other-file)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-j") 'semantic-ia-complete-symbol)
(global-set-key (kbd "C-c ?") 'semantic-ia-complete-symbol-menu)
(global-set-key (kbd "C-m") 'newline-and-indent)
(global-set-key (kbd "C-S-SPC") 'hidden-mode-line-mode)
(global-set-key (kbd "<Scroll_Lock>") 'scroll-lock-mode)

;; easy keys to split window. Key based on ErgoEmacs keybinding
(global-set-key (kbd "M-1") 'split-window-horizontally) ; split pane top/bottom
(global-set-key (kbd "M-3") 'delete-other-windows) ; expand current pane
(global-set-key (kbd "M-4") 'split-window-vertically) ; split pane top/bottom
(global-set-key (kbd "M-2") 'delete-window) ; close current pane

(global-set-key (kbd "M-s") 'other-window) ; cursor to other pane
(global-set-key (kbd "M-S")
								(lambda ()
									(interactive)
									(other-window -1))) ; cursor to other pane backwards

(defun rebind-other-window (mode-hook)
	(add-hook mode-hook
						(lambda () (local-set-key (kbd "M-s") 'other-window))))
(mapc 'rebind-other-window
			'(eshell-mode-hook
				dired-mode-hook
				ibuffer-mode-hook))

(global-set-key (kbd "C-x C-b") 'ibuffer) ; improved buffer window
(global-set-key (kbd "M-0") 'kill-this-buffer) ; kill the current buffer
(global-set-key (kbd "C-<tab>") 'next-buffer) ; switch to next buffer, also C-x right
(global-set-key (kbd "C-<iso-lefttab>") 'previous-buffer) ; switch to next buffer, also C-x right

(server-start)
