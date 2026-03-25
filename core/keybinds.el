(general-create-definer my/leader
  :states '(normal visual)
  :keymaps 'override
  :prefix "SPC")

(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)) ;; TODO: doen't live here needs to change place this line

(my/leader
  "b" (cons "buffers" (make-sparse-keymap))
  "bb" '("switch buffer" . counsel-switch-buffer)

  "w" (cons "windows" (make-sparse-keymap))
  "wh" '("window left" . windmove-left)
  "wj" '("window down" . windmove-down)
  "wk" '("window up" . windmove-up)
  "wl" '("window right" . windmove-right)
  "w/" '("split right" . split-window-right)
  "w-" '("split below" . split-window-below)
  "wd" '("delete window" . delete-window)
  "wD" '("ace delete window" . ace-delete-window)

  )


