;; -*- lexical-binding: t -*-

(use-package jinx
  :ensure t
  :config
  (setq-default jinx-languages "en_US")
  (global-jinx-mode)
  ;; there will be the need to add more font faces here for now i guess its only strings that is here
  )

(provide 'core-spellchecker)
