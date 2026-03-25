;; -*- lexical-binding: t -*-

;; basic packages
(setq evil-want-keybinding nil)
(elpaca evil
  (evil-mode 1))

(elpaca evil-collection
  (evil-collection-init))

(elpaca general)

(elpaca which-key
  (which-key-mode 1))

(elpaca ivy
  (ivy-mode 1))

(elpaca counsel
  (counsel-mode 1))

(elpaca ivy-rich
  (ivy-rich-mode 1))

(elpaca ace-window)

(elpaca projectile
  (projectile-mode 1))

(elpaca transient)

(elpaca magit)

(elpaca-wait)

(load (expand-file-name "core/keybinds.el" (file-name-directory load-file-name)))
(load (expand-file-name "configs/dired-config.el" (file-name-directory load-file-name)))
