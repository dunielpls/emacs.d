;; Enable highlight matching/autocomplete parentheses in elisp mode.
(add-hook 'emacs-lisp-mode-hook
		  (progn
			(show-paren-mode    t)
			(electric-pair-mode t)))
