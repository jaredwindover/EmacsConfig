;; Inhibit messages for user
(if (eq system-type 'windows-nt)
		(if (eq (system-name) "TDL05108887")
				(setq inhibit-startup-echo-area-message "windoj9"))
	(setq inhibit-startup-echo-area-message "jared"))
