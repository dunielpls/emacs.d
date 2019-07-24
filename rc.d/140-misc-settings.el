;; Copyright string
(setq *copyright-organization* "Daniel Isaksen")

;; Enable column numbers globally
(column-number-mode t)

;; Fill should by default wrap to 80 columns.
(setq-default fill-column 80)

;; Tab width is 4
(setq-default tab-width 4)

;; Always reload files when they are changed on disk.
(global-auto-revert-mode t)

;; Disable button (tool) bar in GUI.
(when (and (eq system-type 'gnu/linux) window-system)
  (tool-bar-mode   0)
  (scroll-bar-mode 0))

;; Case sensitive completions.
(setq dabbrev-case-fold-search nil)

;; Descriptive frame title.
(setq frame-title-format
      '(
        (:eval
         (if (buffer-file-name)
             (abbreviate-file-name
              (buffer-file-name))
           "%b"))
        " - "
        invocation-name
        "@"
        system-name))

;; Disable backups.
(setq backup-inhibited           t
      make-backup-files          0
      auto-save-default          0
      auto-save-list-file-prefix 0)

;; Consistent syntax highlighting
(global-font-lock-mode t)

;; Tab always complete
;; (setq tab-always-indent 'complete)
;; (add-to-list 'completion-styles 'initials t)

;; anzu-mode shows current match and total matches when searching.
(require 'anzu)
(global-anzu-mode t)

;; Golden ratio is a MUST.
(golden-ratio-mode t)
(setq golden-ratio-auto-scale t)

;; Modeline progress bar.
(require 'sml-modeline)
(setq sml-modeline-len 18)
(sml-modeline-mode t)

;; dockerfile-mode.
(require 'dockerfile-mode)
