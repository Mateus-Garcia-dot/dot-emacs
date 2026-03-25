;; -*- lexical-binding: t -*-

(load (expand-file-name "configs/evil-config.el" (file-name-directory load-file-name)))

;; basic packages
(elpaca (general :wait t))

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

(load (expand-file-name "configs/theme-config.el" (file-name-directory load-file-name)))
(load (expand-file-name "configs/dired-config.el" (file-name-directory load-file-name)))
(load (expand-file-name "core/keybinds.el" (file-name-directory load-file-name)))
