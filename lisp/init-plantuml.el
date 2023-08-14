
(use-package plantuml-mode
  :straight t
  :config
  (setq org-plantuml-jar-path "D:/home/.emacs.d/plantuml.jar")
  (setq plantuml-default-exec-mode 'jar))

(provide 'init-plantuml)
