;; -*- lexical-binding: t -*-

(use-package evil
  :ensure (:wait t)
  :init
  (setq evil-want-keybinding nil)
  (setq evil-symbol-word-search t)
  :config
  (evil-mode 1)
  (define-key evil-normal-state-map (kbd "+") (kbd "\"+"))
  (define-key evil-visual-state-map (kbd "+") (kbd "\"+"))
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode 1))

(use-package evil-surround
  :ensure t
  :config (global-evil-surround-mode 1))

(use-package evil-collection
  :ensure t
  :after evil
  :config (evil-collection-init))

(use-package evil-goggles
  :ensure t
  :after evil
  :config
  (evil-goggles-mode)
  (evil-goggles-use-diff-faces))

(use-package evil-quickscope
  :ensure t
  :after evil
  :config (global-evil-quickscope-always-mode 1))

(use-package evil-commentary
  :ensure t
  :after evil
  :config (evil-commentary-mode 1))

(add-hook 'after-change-major-mode-hook
          #'(lambda () (modify-syntax-entry ?_ "w")))

(electric-pair-mode 1)

(provide 'core-evil)
