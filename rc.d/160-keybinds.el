;; Compile hotkeys.
(global-set-key [f5] 'compile)
(global-set-key [f6] 'next-error)

;; Oh, glorious dedent.
(global-set-key [backtab] 'remove-indentation-spaces)

;; Flymake hotkeys.
(global-set-key (read-kbd-macro "M-<down>") 'flymake-goto-next-error)
(global-set-key (read-kbd-macro "M-<up>")   'flymake-goto-prev-error)

;; Replace / replace-regexp keybinds.
(global-set-key (read-kbd-macro "C-R")   'query-replace)
(global-set-key (read-kbd-macro "C-S-R") 'query-replace-regexp)

;; Quick (un)comment keybinds.
(global-set-key (read-kbd-macro "C-/")   'comment-region)
(global-set-key (read-kbd-macro "C-?")   'uncomment-region)

;; Jump to function definition
(global-set-key (read-kbd-macro "C-.")   'erl-find-source-under-point)
;; Jump back to where we came from
(global-set-key (read-kbd-macro "C-,")   'erl-find-source-unwind)

;; Open neotree.
(global-set-key [f8] 'neotree-project-dir)

;; Correct with flyspell.
(eval-after-load
  'org '(define-key org-mode-map [f9] 'flyspell-auto-correct-previous-word))
