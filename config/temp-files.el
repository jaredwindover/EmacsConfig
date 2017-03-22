;; Put backup files in temp
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))

;; Put auto-save files in temp
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Don't create lockfiles
(setq create-lockfiles nil)
