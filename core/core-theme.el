;; -*- lexical-binding: t -*-

(elpaca doom-themes
  (load-theme 'doom-city-lights t))

(elpaca spacious-padding
  (setq spacious-padding-widths
        '(:internal-border-width 15
          :right-divider-width 1))
  (spacious-padding-mode 1))

(setq-default mode-line-format nil)

(setq window-divider-default-bottom-width 1
      window-divider-default-right-width 1
      window-divider-default-places 'bottom-only)

(defun my/set-window-divider-faces ()
  (set-face-attribute 'window-divider nil :foreground "#2d3640")
  (set-face-attribute 'window-divider-first-pixel nil :foreground "#2d3640")
  (set-face-attribute 'window-divider-last-pixel nil :foreground "#2d3640"))

(add-hook 'spacious-padding-mode-hook
          (lambda ()
            (when spacious-padding-mode
              (my/set-window-divider-faces))))

(window-divider-mode 1)
(my/set-window-divider-faces)

(provide 'core-theme)
