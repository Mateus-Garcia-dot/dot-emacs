;; -*- lexical-binding: t -*-

(elpaca jinx
  (dolist (hook '(text-mode-hook prog-mode-hook conf-mode-hook))
    (add-hook hook #'jinx-mode))
  (setq-default jinx-languages "en_US")
  ;; there will be the need to add more font faces here for now i guess its only strings that is here
  )
