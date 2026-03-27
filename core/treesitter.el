;; -*- lexical-binding: t -*-

(elpaca treesit-auto
  (require 'treesit-auto)
  (setq treesit-auto-install 'prompt)
  (global-treesit-auto-mode))

(provide 'core-treesitter)
