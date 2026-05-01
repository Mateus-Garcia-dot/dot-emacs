;; -*- lexical-binding: t -*-

(use-package dap-mode
  :ensure t
  :custom (dap-auto-configure-features '(tooltip))
  :config
  (dap-ui-mode 1)
  (dap-ui-controls-mode -1))

(provide 'core-dap)
