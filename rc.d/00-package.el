;; Initialization.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

;; This is for compability.
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; Update the package archive if there is none.
(when (not package-archive-contents)
  (package-refresh-contents))

;; Automatically install packages defined in `~/.emacs.d/init-custom.el'.
(package-install-selected-packages)
