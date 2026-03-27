;; -*- lexical-binding: t -*-


(use-package treesit-auto
  :ensure t
  :config
  (require 'treesit-auto)
  (setq treesit-auto-install 'prompt)
  (global-treesit-auto-mode)
  )

(provide 'core-treesitter)
