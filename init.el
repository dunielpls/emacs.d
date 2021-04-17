(require 'cl-lib)

(defun num-from-rc-path (str)
  "Extract numbers in string form from absolute RC file path."
  (string-to-number (nth 3 (split-string str "[\/-]"))))

(defun sort-rc-files (lst)
  "Sort RC files by the number in the filename."
  (cl-stable-sort lst
                  (lambda (a b)
                    (> (num-from-rc-path b)
                       (num-from-rc-path a)))))

(defun load-rc-files (path)
  "List, sort, and load RC files."
  (let ((unsorted (file-expand-wildcards (concat path "*-*.el"))))
    (dolist (file (sort-rc-files unsorted))
      (load file))))

(defun load-conf ()
  (interactive)
  (load-rc-files rc-config-path))

(defconst custom-file    "~/.emacs.d/init-custom.el")
(defconst rc-config-path "~/.emacs.d/rc.d/")

;; Hack: Disable TLS 1.3 since it's broken in some versions of Emacs.
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(load          custom-file)
(load-rc-files rc-config-path)
