(require 'cl-lib)

(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer 
        (delq (current-buffer) 
              (cl-remove-if-not 'buffer-file-name (buffer-list)))))

(defun remove-indentation-spaces ()
  "Remove `tab-width' spaces from the beginning of this line."
  (interactive)
  (indent-rigidly (line-beginning-position) (line-end-position) (- tab-width)))
