;; -*- lexical-binding: t -*-

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(php-ts-mode . ("phpactor" "language-server"))))

(add-hook 'php-ts-mode-hook #'eglot-ensure)

(provide 'lang-php)
