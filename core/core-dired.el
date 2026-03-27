;; -*- lexical-binding: t -*-

(with-eval-after-load 'dired
  (setq wdired-allow-to-change-permissions t)
  (add-hook 'dired-mode-hook #'dired-hide-details-mode))

(provide 'core-dired)
