(require 'cl-lib)

(defun do-map-keys (keymap)
	(dolist (entry keymap)
		(let ((key (car entry))
					(f (nth 1 entry)))
			(local-set-key (kbd key) f))))

(defun org-table-goto-beginning-of-cell ()
	(interactive)
	(search-backward "|")
	(forward-char))

(defun org-table-goto-end-of-cell ()
	(interactive)
	(search-forward "|")
	(backward-char))

(defun delete-and-extract-cell ()
	(interactive)
	(let ((start (point)))
		(org-table-edit-field 1)
		(org-table-goto-beginning-of-cell)
		(let ((beg (point))) ;; save start of first cell
			(org-table-goto-end-of-cell)
			(delete-and-extract-region beg (point)))))

(defun org-table-swap-cell (direction)
	"Swaps current cell with cell below. Errors horribly if that isn't meaningful"
	(let ((start (point)))
		(if (eq direction 'up) (previous-line) nil)
		(org-table-edit-field 1)
		(org-table-goto-end-of-cell)
		(let ((end (point))) ;; save start of first cell
			(org-table-goto-beginning-of-cell)
			(let ((beg (point)))
				(let ((cell-1 (delete-and-extract-region beg end))) ;; get first cell
					(next-line)
					(org-table-edit-field 1)
					(org-table-goto-end-of-cell)
					(let ((end2 (point))) ;; save start of second cell contents
						(insert cell-1)  ;; copy contents of cell 1 into cell 2
						(org-table-goto-beginning-of-cell)
						(let ((cell-2 (delete-and-extract-region end2 (point))))
							(goto-char beg)
							(insert cell-2))))))
		(goto-char start))
		(if (eq direction 'down) (next-line) (previous-line))
		(org-table-align))

(defun org-table-swap-cell-down ()
	"Swaps current cell with cell below. Errors horribly if that isn't meaningful"
	(interactive)
	(org-table-swap-cell 'down))

(defun org-table-swap-cell-up ()
	"Swaps current cell with cell below. Errors horribly if that isn't meaningful"
	(interactive)
	(org-table-swap-cell 'up))

(defun org-close-parent ()
	"Cycles the nearest parent"
	(interactive)
	(if (org-at-heading-p)
			(outline-up-heading 1)
		(org-back-to-heading))
	(org-cycle))

(defun on-org-mode ()
	(do-map-keys '(("C-c <up>" org-table-swap-cell-up)
								 ("C-c <down>" org-table-swap-cell-down)
								 ("C-c a" org-agenda)
								 ("<S-tab>" org-close-parent)))
	(toggle-truncate-lines 0)
	(toggle-word-wrap 1))

(add-hook 'org-mode-hook 'on-org-mode)
