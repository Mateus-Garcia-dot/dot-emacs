;; -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "core" my/config-dir))
(add-to-list 'load-path (expand-file-name "lang" my/config-dir))

(require 'core-evil)
(require 'core-keybinds)
(require 'core-navigation)
(require 'core-completion)
(require 'core-git)
(require 'core-theme)
(require 'core-dired)
(require 'core-spellchecker)
(require 'core-treesitter)
(require 'core-lsp)

(require 'lang-js)
