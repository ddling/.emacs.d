(use-package evil
  :straight t
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1)

  (use-package evil-leader
    :straight t
    :config
    (progn
      (global-evil-leader-mode)
      (setq evil-leader/in-all-states t)
        (evil-leader/set-leader "SPC")
        (evil-leader/set-key
	  "of" 'org-roam-node-find
	  "ot" 'org-roam-buffer-toggle
	  "oi" 'org-roam-node-insert
	  "oc" 'org-id-get-create
	  "p"  'projectile-switch-project
	  "f"  'projectile-find-file
	  "x"  'counsel-M-x
	  "b"  'ivy-switch-buffer
	  "w"  'ace-window
	  "t"  'counsel-org-tag
	  "a"  'org-open-at-point)))

  (use-package evil-nerd-commenter
    :straight t)
	
  (use-package evil-collection
    :straight t
    :config
    (evil-collection-init))

  (use-package evil-smartparens
    :straight t)

  (use-package evil-surround
    :straight t
    :config
    (global-evil-surround-mode 1))
	
  (use-package evil-escape
    :straight t
    :init
    (evil-escape-mode)
    :config
    (setq-default evil-escape-delay 0.2))
)

(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
(add-hook 'prog-mode-hook #'evil-smartparens-mode)
(add-hook 'org-mode-hook #'evil-smartparens-mode)

(provide 'init-evil)
