;; markdown-mode filetypes.
(setq auto-mode-alist (append auto-mode-alist
                              '()))

(setq modes
      '(
        ;; erlang-mode
        ("^\\.erlang$"  . erlang-mode)
        ("\\.app.src$"  . erlang-mode)
        ("\\.appSrc$"   . erlang-mode)
        ("\\.rel$"      . erlang-mode)
        ("\\.app$"      . erlang-mode)
        ("\\.hrl$"      . erlang-mode)
        ("\\.erl$"      . erlang-mode)
        ("\\.yrl$"      . erlang-mode)
        ("\\.xrl$"      . erlang-mode)

        ;; elixir-mode.
        ("\\.ex"        . elixir-mode)
        ("\\.eex"       . elixir-mode)
        ("\\.exs"       . elixir-mode)

        ;; markdown-mode.
        ("README\\.md$" . gfm-mode)
        ("\\.md$"       . markdown-mode)
        ("\\.markdown$" . markdown-mode)

        ;; cython-mode.
        ("\\.pyx$"      . cython-mode)
        ("\\.pxd$"      . cython-mode)
        ("\\.pxi$"      . cython-mode)
        ))

(dolist (mode modes))
