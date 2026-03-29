;; -*- lexical-binding: t -*-

(add-hook 'bash-ts-mode-hook #'eglot-ensure)
(add-hook 'sh-mode-hook #'eglot-ensure)

(provide 'lang-bash)

