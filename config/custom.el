(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(coffee-tab-width 2)
 '(comment-style (quote box))
 '(custom-file "~/.emacs.d/config/custom.el")
 '(custom-safe-themes
	 (quote
		("552f83291caa232034f60cff23386960048fc0f35348d522fc48aa55d6ae21c6" "c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" "a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" "0b2e94037dbb1ff45cc3cd89a07901eeed93849524b574fa8daa79901b2bfdcf" default)))
 '(debug-on-error t)
 '(flycheck-disabled-checkers (quote (javascript-jshint)))
 '(gnus-read-active-file nil)
 '(gnus-select-method (quote (nntp "www.newshosting.com")))
 '(ibuffer-formats
	 (quote
		((mark modified read-only " "
					 (name 18 18 :left :elide)
					 " "
					 (size 9 -1 :right)
					 " "
					 (mode 16 16 :left :elide)
					 " " filename-and-process)
		 (mark " "
					 (name 16 -1)
					 " " filename)
		 (mark modified read-only " "
					 (filename-and-process -50 50 :right :elide)
					 " "
					 (size 9 -1 :right)
					 " "
					 (mode 16 16 :left :elide)))))
 '(ibuffer-saved-filter-groups
	 (\`
		(("Main"
			("Emacs"
			 (name . "\\(\\*.*\\*\\|\\.el$\\)"))
			("ORG"
			 (filename . "\\.org$"))
			("DIRED"
			 (used-mode . dired-mode))
			("Journal"
			 (filename \,
								 (file-truename org-journal-dir)))
			("BASH"
			 (filename . "\\.sh$"))
			("FISH"
			 (filename . "\\.fish$"))
			("Python"
			 (filename . "\\.py$"))
			("YAML"
			 (filename . "\\.yaml$"))
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
 '(js2-bounce-indent-p nil)
 '(js2-global-externs (quote ("describe" "context" "it" "before" "after")))
 '(org-M-RET-may-split-line (quote ((default))))
 '(org-adapt-indentation nil)
 '(org-agenda-file-regexp "\\`[^.].*\\'")
 '(org-agenda-files (quote ("~/Projects/Notes.org" "~/Documents/journal")))
 '(org-agenda-window-setup (quote current-window))
 '(org-clock-continuously t)
 '(org-cycle-hook
	 (quote
		(org-cycle-hide-archived-subtrees org-cycle-show-empty-lines org-optimize-window-after-visibility-change)))
 '(org-insert-mode-line-in-empty-file t)
 '(org-link-frame-setup
	 (quote
		((vm . vm-visit-folder-other-frame)
		 (vm-imap . vm-visit-imap-folder-other-frame)
		 (gnus . org-gnus-no-new-news)
		 (file . find-file)
		 (wl . wl-other-frame))))
 '(org-refile-targets (quote ((org-agenda-files :maxlevel . 20))))
 '(org-refile-use-outline-path t)
 '(org-use-property-inheritance t)
 '(package-selected-packages
	 (quote
		(go-mode lsp-ui treemacs lsp-java lsp-mode nhexl-mode powerline gradle-mode kotlin-mode org-link-minor-mode org-journal yasnippet smart-tab js2-refactor ibuffer-vc flycheck salt-mode haskell-mode undo-tree dockerfile-mode groovy-mode auto-complete nyan-mode toml-mode rust-mode hl-line+ fsharp-mode markdown-mode elpy highlight-indent-guides js2-mode web-mode ## rainbow-mode lua-mode fish-mode circe powershell centered-cursor-mode yaml-mode monokai-theme smart-tabs-mode)))
 '(php-mode-coding-style (quote wordpress))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(powerline-default-separator (quote contour))
 '(powerline-image-apple-rgb t)
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
 '(vc-follow-symlinks t)
 '(web-mode-markup-indent-offset 2)
 '(weechat-color-list
	 (unspecified "#272822" "#20240E" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(whitespace-style
	 (quote
		(face tabs spaces trailing lines space-before-tab newline empty space-mark tab-mark newline-mark)))
 '(x-stretch-cursor t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "DejaVu Sans Mono"))))
 '(fringe ((t (:background "#272822")))))
