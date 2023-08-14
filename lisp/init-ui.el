(tool-bar-mode 0)

(menu-bar-mode 0)

(scroll-bar-mode 0)

(setq-default line-spacing 0.5)

;; ui relative plugins

(use-package doom-themes
  :straight t
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-solarized-light t)
  (doom-themes-org-config))

;; doom model line plugin
(use-package doom-modeline
  :straight t
  :hook (after-init . doom-modeline-mode))

(use-package olivetti
  :straight t
  :hook
  ((olivetti-mode-on-hook . (lambda () (olivetti-set-width 100)))))

(add-hook 'prog-mode-hook #'olivetti-mode)

(provide 'init-ui)
