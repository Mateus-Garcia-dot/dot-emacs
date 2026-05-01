;; -*- lexical-binding: t -*-

(use-package org-modern
  :ensure t
  :custom (org-modern-star '("›"))
  :hook ((org-mode . org-modern-mode)
         (org-mode . (lambda () (display-line-numbers-mode -1)))))

(use-package visual-fill-column :ensure t :defer t)

(use-package org-present
  :ensure t
  :config
  (setq org-present-text-scale 3)
  (add-hook 'org-present-mode-hook
            (lambda ()
              (org-present-big)
              (setq-local face-remapping-alist
                          '((header-line (:height 4.0 :inherit variable-pitch))))
              (setq header-line-format " ")
              (setq-local visual-fill-column-width 80)
              (setq-local visual-fill-column-center-text t)
              (visual-fill-column-mode 1)
              (visual-line-mode 1)))
  (add-hook 'org-present-mode-quit-hook
            (lambda ()
              (org-present-small)
              (visual-fill-column-mode -1)
              (visual-line-mode -1)
              (setq header-line-format nil))))

(provide 'lang-org)
