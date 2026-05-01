;; -*- lexical-binding: t -*-

(add-to-list 'auto-mode-alist '("\\.php\\'" . php-ts-mode))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(php-ts-mode . ("phpactor" "language-server"))))

(add-hook 'php-ts-mode-hook #'eglot-ensure)

(defun my/php-toggle-test ()
  "Toggle between a class and its test file."
  (interactive)
  (save-excursion
    (when (re-search-backward
           "^\\s-*\\(?:final\\s-+\\)?class\\s-+\\([A-Za-z_][A-Za-z0-9_]*\\)" nil t)
      (let* ((class-name  (match-string-no-properties 1))
             (search-term (if (string-suffix-p "Test" class-name)
                              (string-remove-suffix "Test" class-name)
                            (concat class-name "Test")))
             (files (remove (file-relative-name buffer-file-name (projectile-project-root))
                            (projectile-current-project-files)))
             (file (completing-read "Find file: " files nil t search-term)))
        (find-file (expand-file-name file (projectile-project-root)))))))

(provide 'lang-php)
