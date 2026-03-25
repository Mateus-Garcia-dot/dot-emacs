;; -*- lexical-binding: t -*-

(with-eval-after-load 'dired
  (setq insert-directory-program "gls")
  (setq dired-listing-switches "-alhv --group-directories-first --dired")
  (setq wdired-allow-to-change-permissions t)
  (add-hook 'dired-mode-hook #'dired-hide-details-mode))
