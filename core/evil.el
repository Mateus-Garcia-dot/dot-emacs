;; -*- lexical-binding: t -*-

(setq evil-want-keybinding nil)

(elpaca (evil :wait t)
  (evil-mode 1)
  (define-key evil-normal-state-map (kbd "+") (kbd "\"+"))
  (define-key evil-visual-state-map (kbd "+") (kbd "\"+"))
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode 1))

(elpaca evil-surround
  (global-evil-surround-mode 1))

(elpaca evil-collection
  (evil-collection-init))

(elpaca evil-goggles
  (evil-goggles-mode)
  (evil-goggles-use-diff-faces))

(elpaca evil-quickscope
  (global-evil-quickscope-always-mode 1))

(setq evil-symbol-word-search t)

(add-hook 'after-change-major-mode-hook
          #'(lambda () (modify-syntax-entry ?_ "w")))

(provide 'core-evil)
