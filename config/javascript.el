(defun do-map-keys (keymap)
	(dolist (entry keymap)
		(let ((key (car entry))
					(f (nth 1 entry)))
			(local-set-key (kbd key) f))))

(defun js2-jsx-mode-keys ()
	(do-map-keys '(("C-c c" js2r-contract-node-at-point)
								 ("C-c e" js2r-expand-node-at-point))))

;; Javascript mode hook
(add-hook 'js2-jsx-mode-hook 'auto-complete-mode)
(add-hook 'js2-jsx-mode-hook 'flycheck-mode)
(add-hook 'js2-jsx-mode-hook
					(lambda () (setq indent-tabs-mode t)))
(add-hook 'js2-jsx-mode-hook 'js2-refactor-mode)
(add-hook 'js2-jsx-mode-hook 'js2-jsx-mode-keys)
(add-hook 'js2-jsx-mode-hook 'subword-mode)

(smart-tabs-add-language-support jsx js2-jsx-mode-hook
	((js2-jsx-indent-line . js2-basic-offset)))
(smart-tabs-insinuate 'jsx)

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/.bin/eslint"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
