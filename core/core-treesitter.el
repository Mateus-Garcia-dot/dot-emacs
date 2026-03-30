;; -*- lexical-binding: t -*-

(use-package treesit-auto
  :ensure t
  :custom (treesit-auto-install 'prompt)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))

(setq treesit-language-source-alist
      '((php "https://github.com/tree-sitter/tree-sitter-php" "v0.22.8" "php/src")
        (phpdoc "https://github.com/claytonrcarter/tree-sitter-phpdoc")
        (html "https://github.com/tree-sitter/tree-sitter-html" "v0.20.3")
        (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "v0.21.2")
        (jsdoc "https://github.com/tree-sitter/tree-sitter-jsdoc" "v0.21.0")
        (css "https://github.com/tree-sitter/tree-sitter-css" "v0.21.0")))

(treesit-install-language-grammar 'php)
(treesit-install-language-grammar 'phpdoc)
(treesit-install-language-grammar 'html)
(treesit-install-language-grammar 'javascript)
(treesit-install-language-grammar 'jsdoc)
(treesit-install-language-grammar 'css)

(add-to-list 'auto-mode-alist '("\\.php\\'" . php-ts-mode))

(provide 'core-treesitter)
