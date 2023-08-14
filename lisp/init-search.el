(use-package ivy
  :straight t
  :defer 0.1
  :diminish
  :bind (("C-c C-r" . ivy-resume)
         ("C-x B" . ivy-switch-buffer-other-window))
  :custom
  (ivy-count-format "(%d/%d) ")
  (ivy-use-virtual-buffers t)
  :config (ivy-mode))

(use-package counsel
  :straight t
  :after ivy
  :config (counsel-mode))

(use-package ivy-rich
  :straight t
  :after ivy
  :custom
  (ivy-virtual-abbreviate 'full
                          ivy-rich-switch-buffer-align-virtual-buffer t
                          ivy-rich-path-style 'abbrev))

(use-package swiper
  :straight t
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper)))
		 
(use-package prescient
  :straight t
  :config
  (prescient-persist-mode))
  
(use-package ivy-prescient
  :straight t
  :after ivy
  :init (ivy-prescient-mode)) 

(use-package which-key
  :straight t
  :after ivy
  :config
  (which-key-mode))

(provide 'init-search)