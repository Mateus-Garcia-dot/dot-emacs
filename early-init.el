;; -*- lexical-binding: t -*-

;; remove ui defaults
(setq default-frame-alist
      '((menu-bar-lines . 0)
        (tool-bar-lines . 0)
        (vertical-scroll-bars . nil)
        (horizontal-scroll-bars . nil)
        (undecorated . t)
        (fullscreen . maximized)
        (internal-border-width . 15)))

(setq frame-inhibit-implied-resize t)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(load (expand-file-name "packages/elpaca.el" (file-name-directory load-file-name)))
