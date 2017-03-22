;;;Package system
(require 'package)

;; Add marmalade repository
(add-to-list 'package-archives
						 '("marmalade" . "http://marmalade-repo.org/packages/"))

;; Add melpa repository
(add-to-list 'package-archives
						 '("melpa" . "http://melpa.org/packages/"))

;; Initialize package
(package-initialize)
