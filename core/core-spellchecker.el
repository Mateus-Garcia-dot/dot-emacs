;; -*- lexical-binding: t -*-

(use-package jinx
  :ensure t
  :config
  (setq-default jinx-languages "en_US")
  (add-to-list 'jinx-camel-modes 'php-ts-mode)
  (setq jinx-include-faces
        (assq-delete-all 'prog-mode jinx-include-faces))
  (global-jinx-mode))

(provide 'core-spellchecker)
