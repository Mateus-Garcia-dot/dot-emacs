;; -*- lexical-binding: t -*-


;; basic packages
(elpaca evil
  (evil-mode 1))

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

(elpaca-wait)

(load (expand-file-name "core/keybinds.el" (file-name-directory load-file-name)))
