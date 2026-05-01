;; -*- lexical-binding: t -*-

(use-package vterm
  :ensure t
  :custom
  (vterm-max-scrollback 10000)
  (vterm-kill-buffer-on-exit t)
  :config
  (add-hook 'vterm-mode-hook #'evil-insert-state))

(use-package vterm-toggle
  :ensure t
  :after vterm
  :custom
  (vterm-toggle-scope 'project)
  (vterm-toggle-hide-method 'reset-window-configration))

(provide 'core-vterm)
