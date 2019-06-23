(defconst erlang-get-root-path-command
  "erl -noshell -eval 'io:format(code:lib_dir(tools, emacs)).' -s erlang halt")
(defconst erlang-is-installed 0)

;; erlang-mode.
(if (executable-find "erl")
    (let* ((epath (shell-command-to-string erlang-get-root-path-command))
           (rpath (expand-file-name (concat epath "../../../../"))))
      (setq erlang-is-installed t)
      (setq erlang-root-dir     rpath)
      (add-to-list 'load-path   epath)
      (add-to-list 'exec-path   (concat rpath "bin"))))

(if (boundp 'erlang-is-installed)
    (require 'erlang-start)
  (add-hook 'erlang-mode-hook 'erl-hook-func)
  (defun erl-hook-func ()
    ;; Shamelessly stolen from Lukas Larsson. <3
    (imenu-add-to-menubar                 "Functions")
    (setq erlang-skel-mail-address        "d@duniel.no")
    (setq user-full-name                  "Daniel Isaksen")
    (setq inferior-erlang-machine-options '("-sname" "emacs"))
    (local-set-key                        [return] 'newline-and-indent)
    (hs-minor-mode                        t))

  ;; Flymake for erlang-mode.
  (require 'erlang-flymake)
  (defun erl-flymake-include-dirs ()
    (let ((rpath (shell-command-to-string erl-flymake-include-dirs-command)))
      (list (concat (erlang-flymake-get-app-dir) "include")
            (concat rpath "/lib/kernel/src/")
            (concat rpath "/lib/kernel/include/"))))
  (setq erlang-flymake-get-include-dirs-function 'erl-flymake-include-dirs)

  ;; distel.
  (setq load-path (cons "~/.emacs.d/distel/elisp" load-path))
  (require 'distel)
  (distel-setup))
