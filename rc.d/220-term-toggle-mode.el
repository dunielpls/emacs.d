(require 'term)

(defun term-toggle ()
  "Toggles term mode between line and character mode."
  (interactive)
  (if (term-in-line-mode)
      (term-char-mode)
    (term-line-mode)))

(define-key term-mode-map (kbd "C-c C-j") 'term-toggle)
(define-key term-mode-map (kbd "C-c C-k") 'term-toggle)

(define-key term-raw-map (kbd "C-c C-j") 'term-toggle)
(define-key term-raw-map (kbd "C-c C-k") 'term-toggle)
