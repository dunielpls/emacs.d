;; Enable projectile.
(require 'projectile)
(projectile-mode t)
(define-key projectile-mode-map (kbd "s-p")   'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
