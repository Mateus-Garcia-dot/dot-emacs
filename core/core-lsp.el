;; -*- lexical-binding: t -*-

(add-to-list 'exec-path (expand-file-name ".lsp-servers/bin" my/config-dir))

(use-package markdown-mode :ensure t)

(use-package eglot
  :ensure nil
  :config
  (setq eglot-autoshutdown t))

(add-hook 'eglot-managed-mode-hook #'flymake-mode)

(evil-define-key 'normal prog-mode-map
  "K" #'eldoc-doc-buffer)

(provide 'core-lsp)
