;; Theme stuffs.
(require 'rand-theme)
(setq rand-theme-wanted '(
                          xemacs
                          adwaita
                          gnome
                          plan9
                          github-modern
                          one-dark
                          one-light
                          midnight
                          zenburn
                          spolsky
                          borland-bluex
                          ))

;; Set the default theme.
;; (rand-theme)
;; (load-theme 'xemacs t)
(if (display-graphic-p)
    (load-theme 'spolsky t)
  (load-theme 'dracula t))

(set-face-attribute 'fringe nil :background nil)
