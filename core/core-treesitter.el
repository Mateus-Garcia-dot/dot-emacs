;; -*- lexical-binding: t -*-

(use-package treesit-auto
  :ensure t
  :custom (treesit-auto-install 'prompt)
  :config
  (setq treesit-language-source-alist
        '((php        "https://github.com/tree-sitter/tree-sitter-php"        "v0.22.8" "php/src")
          (phpdoc     "https://github.com/claytonrcarter/tree-sitter-phpdoc")
          (html       "https://github.com/tree-sitter/tree-sitter-html"       "v0.20.3")
          (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "v0.21.2")
          (jsdoc      "https://github.com/tree-sitter/tree-sitter-jsdoc"      "v0.21.0")
          (css        "https://github.com/tree-sitter/tree-sitter-css"        "v0.21.0")))
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))

(provide 'core-treesitter)
