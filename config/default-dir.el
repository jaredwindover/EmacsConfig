;; Set default directory
(if (eq system-type 'windows-nt)
		(if (eq (system-name) "TDL05108887")
				(setq default-directory
							"C:/Users/Redirection/windoj9"))
	(setq default-directory
				"/home/jared"))
