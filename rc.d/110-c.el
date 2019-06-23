;; C style
(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode nil
              c-default-style '((java-mode . "java")
                                (awk-mode  . "awk")
                                (other     . "bsd")))

;; Automatically add newlines when typing braces and such
(setq c-auto-newline t)

;; Make delete undo it all at once
(setq c-hungry-delete-key 0)
