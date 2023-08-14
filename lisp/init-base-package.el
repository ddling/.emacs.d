(use-package which-key
  :straight t
  :init
  (which-key-mode)
  :config
  (which-key-setup-side-window-bottom)
  (setq which-key-sort-order 'which-key-key-order-alpha
    which-key-side-window-max-width 0.33
    which-key-idle-delay 0.05)
  :diminish which-key-mode)

(use-package projectile
  :straight t
  :defer t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))

(use-package dashboard
  :straight t
  :config
  (setq dashboard-startup-banner 1)
  (setq dashboard-center-content t)
  (setq dashboard-items '((recents  . 3)
                        (projects . 3)
                        (bookmarks . 3)
                        (agenda . 5)))
  (dashboard-setup-startup-hook))

(use-package ace-window
  :straight t)

(provide 'init-base-package)