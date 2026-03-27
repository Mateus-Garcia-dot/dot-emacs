;; -*- lexical-binding: t -*-


(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-city-lights t))

(setq-default mode-line-format nil)

(set-face-attribute 'default nil
  :font "JetBrainsMono Nerd Font Mono"
  :height 120
  :weight 'normal)

(provide 'core-theme)
