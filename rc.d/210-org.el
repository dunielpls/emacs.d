(require 'org)

(defun org-hook ()
  (org-bullets-mode t))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (ruby   . t)
   (dot    . t)))

(add-hook 'org-mode-hook 'org-hook)
