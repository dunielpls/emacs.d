;; ggtags.
(require 'ggtags)
(defun c-mode-ggtags-hook ()
  (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
	(ggtags-mode t)))

(add-hook 'c-mode-common-hook 'c-mode-ggtags-hook)
