;; -*- lexical-binding: t -*-

(use-package ivy
  :ensure t
  :config (ivy-mode 1))

(use-package counsel
  :ensure t
  :after ivy
  :config (counsel-mode 1))

(use-package ivy-rich
  :ensure t
  :after ivy
  :config (ivy-rich-mode 1))

(use-package projectile
  :ensure t
  :after ivy
  :config (projectile-mode 1))

(provide 'core-completion)
