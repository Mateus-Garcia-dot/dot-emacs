;; -*- lexical-binding: t -*-

(use-package general
  :ensure (:wait t)
  :config
  (general-create-definer my/leader
    :states '(normal visual motion)
    :keymaps 'override
    :prefix "SPC")
  (my/leader
    "b" (cons "buffers" (make-sparse-keymap))
    "bb" '("switch buffer" . consult-buffer)

    "w" (cons "windows" (make-sparse-keymap))
    "wh" '("window left" . windmove-left)
    "wj" '("window down" . windmove-down)
    "wk" '("window up" . windmove-up)
    "wl" '("window right" . windmove-right)
    "w/" '("split right" . split-window-right)
    "w-" '("split below" . split-window-below)
    "wd" '("delete window" . delete-window)
    "wD" '("ace delete window" . ace-delete-window)

    "p" (cons "projects" (make-sparse-keymap))
    "pp" '("switch project" . projectile-switch-project)
    "pf" '("find file" . projectile-find-file)
    "pb" '("switch buffer" . projectile-switch-to-buffer)
    "pk" '("kill project" . projectile-kill-buffers)

    "g" (cons "git" (make-sparse-keymap))
    "gs" '("status" . magit-status)

    "f" (cons "file" (make-sparse-keymap))
    "fj" '("dired" . dired-jump)

    "s" (cons "spell" (make-sparse-keymap))
    "ss" '("correct" . jinx-correct)

    "l" (cons "lsp" (make-sparse-keymap))
    "lr" '("rename" . eglot-rename)
    "la" '("code actions" . eglot-code-actions)
    "lf" '("format" . eglot-format)
    "ld" '("diagnostics" . flymake-show-buffer-diagnostics)
    "le" '("show error" . flymake-show-diagnostic)

    "SPC" '("M-x" . execute-extended-command)
    "/" '("search project" . consult-ripgrep)
    )
  )

(use-package which-key
  :ensure nil
  :config (which-key-mode 1))


(provide 'core-keybinds)
