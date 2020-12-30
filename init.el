;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))


(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(load-user-file "config/default-dir.el")
(load-user-file "config/temp-files.el")
(load-user-file "config/package.el")
(load-user-file "config/inhibit-startup.el")
(load-user-file "config/undo.el")
(load-user-file "config/custom.el")
(load-user-file "config/associations.el")
;; (load-user-file "config/coffee.el")
;; (load-user-file "config/latex.el")
(load-user-file "config/whitespace.el")
(load-user-file "config/zen.el")
(load-user-file "config/org.el")
;; (load-user-file "config/python.el")
(load-user-file "config/javascript.el")
(load-user-file "config/java.el")
(load-user-file "config/web.el")
(load-user-file "config/yaml.el")
(load-user-file "config/ibuffer.el")
(load-user-file "config/toggle-fold.el")
;; (load-user-file "config/move-line.el")
(load-user-file "config/move-lines.el")
(load-user-file "config/keys.el")
;;
(load-theme 'monokai t)
;;
;; Always use these settings
(setq default-cursor-type 'hbar)
(desktop-save-mode 1)
(setq column-number-mode t)
;;
;; Always enable these modes
;; (hidden-mode-line-mode 1)
;; (bzg-big-fringe-mode 1)
(electric-pair-mode 1)
(show-paren-mode 1)
(smart-tabs-mode 1)
(global-hl-line-mode 1)
;;(resp-big-fringe-mode 1)
(centered-cursor-mode 1)
(yas-global-mode 1)
;;
;;(toggle-frame-fullscreen)
(server-start)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
;; Enable move-lines-bindings
(move-lines-binding)
